#include "button.h"

static const int SERIAL_BAUD_RATE = 9600;

static const size_t BUFLEN = 64;
char msg_buf[BUFLEN];

template <typename... Args>
void serial_log(const char *fmt, Args... args)
{
	snprintf(msg_buf, BUFLEN, fmt, args...);
	Serial.println( msg_buf );
}

//  -----------------------------------------------

// clock in
const static int PIN_EXT_CLOCK = 2; // attachInterrupt

// 74HC595
const static int PIN_595_LATCH = 6;
const static int PIN_595_CLOCK = 5;
const static int PIN_595_DATA = 4;

void emit(unsigned char v)
{
	digitalWrite(PIN_595_LATCH, LOW);
	shiftOut(PIN_595_DATA, PIN_595_CLOCK, LSBFIRST, ~v);
	digitalWrite(PIN_595_LATCH, HIGH);
}

// buttons and rotary encoder
const static int PIN_TRIGGER_BUTTON = 7; // attachInterrupt
const static int PIN_FUNC_BUTTON = 8; // pin-change-interrupt
const static int PIN_ROTARY_1 = 9; // pin-change-interrupt
const static int PIN_ROTARY_2 = 10; // pin-change-interrupt

const static int PIN_SEQ_START = 3;


static const size_t SEQ_MAX = 16;
static const size_t SLOT_MAX = 4;
bool sequence[SLOT_MAX][SEQ_MAX];

int cnt_seq;

class OutputManager
{
public:
	void update_current_slot(size_t slot)
	{
		current_slot = slot;

		auto new_data = prev_data & 0xf;
		new_data |= ((1 << current_slot) & 0xf) << 4;

		emit(new_data);
		prev_data = new_data;
	}

	size_t get_current_slot() const
	{ return current_slot; }

	void out_sequence(size_t cnt_seq, bool (*arr)[SEQ_MAX])
	{
		unsigned char new_value = 0xf0;
		for (size_t i = 0; i < SLOT_MAX; ++i)
			if (arr[i][cnt_seq]) new_value |= 1 << i;

		prev_data |= 0x0f;
		prev_data &= new_value;
		emit(prev_data);
	}

	void clear_sequence()
	{
		prev_data &= 0xf0;
		emit(prev_data);
	}

private:
	size_t current_slot = 0;

	// MSB [slot3 slot2 slot1 slot0][seq3 seq2 seq1 seq0] LSB
	unsigned char prev_data = 0;
};

OutputManager om;

bool btn_clr;

class Button_trigger : public Button
{
public:
	Button_trigger(int pin)
		: Button(pin)
	{}

private:
	virtual void onButton(int state) override
	{
		const auto current_slot = om.get_current_slot();
		if (state == 1) {
			if ( digitalRead(PIN_FUNC_BUTTON) == LOW) {
				serial_log("Button_trigger::onButton: clear");
				for (int i = 0; i < SEQ_MAX; ++i) sequence[current_slot][i] = false;
			} else {
				sequence[current_slot][cnt_seq] = true;
			}

			//serial_log("Button_trigger::onButton:");
		}
	}
};

class Button_func : public Button
{
public:
	Button_func(int pin)
		: Button(pin)
	{}

private:
	virtual void onButton(int state) override
	{
		const auto current_slot = om.get_current_slot();
		if (state == 1) {
			for (int i = 0; i < SEQ_MAX/2; ++i) {
				sequence[current_slot][i+SEQ_MAX/2]
					 = sequence[current_slot][i];
			}
			//serial_log("Button_func::onButton: copy");
		}

	}
};

class RE_cmd : public RotarySwitch
{
public:
	RE_cmd(int pin_1, int pin_2)
		: RotarySwitch(pin_1, pin_2)
	{}

private:
	virtual void onRotarySW(RSW_DIR dir) override
	{
		auto slot = om.get_current_slot();

		if (dir == CW) {
			if (slot < SLOT_MAX-1) slot += 1;
		} else {
			if (slot > 0) slot -= 1;
		}

		om.update_current_slot(slot);
		//serial_log("RE_cmd::onRotarySW: %d %d", dir, slot);
	}
};


void onClock()
{
	if (digitalRead(PIN_EXT_CLOCK) == HIGH) {
		// rising edge
		if (cnt_seq == 0) digitalWrite(PIN_SEQ_START, LOW);

		om.out_sequence(cnt_seq, sequence);

	} else {
		// falling edge
		if (cnt_seq == 0) digitalWrite(PIN_SEQ_START, HIGH);

		// quantize between previous falling edge and next falling edge
		cnt_seq += 1;
		if (cnt_seq >= SEQ_MAX) cnt_seq = 0;

		om.clear_sequence();
	}
}

Button_trigger button_t(PIN_TRIGGER_BUTTON);
void onTriggerChanged()
{
	button_t.callback();
}

RE_cmd re(PIN_ROTARY_1, PIN_ROTARY_2);
Button_func button_f(PIN_FUNC_BUTTON);
ISR(PCINT0_vect)
{
	re.callback();
	button_f.callback();
}

void print_seq(bool (*sequence)[16], size_t cnt_seq)
{
	serial_log("[%d %d %d %d]"
		, sequence[0][cnt_seq] 
		, sequence[1][cnt_seq] 
		, sequence[2][cnt_seq] 
		, sequence[3][cnt_seq] 
	);
}

void setup() {
  Serial.begin(SERIAL_BAUD_RATE);

//*
	pinMode(PIN_EXT_CLOCK, INPUT);
  attachInterrupt(digitalPinToInterrupt(PIN_EXT_CLOCK), onClock, CHANGE);
// */

	// 74HC595
	pinMode(PIN_595_LATCH, OUTPUT);
	pinMode(PIN_595_CLOCK, OUTPUT);
	pinMode(PIN_595_DATA, OUTPUT);

  pinMode(PIN_TRIGGER_BUTTON, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(PIN_TRIGGER_BUTTON), onTriggerChanged, CHANGE);

  pinMode(PIN_FUNC_BUTTON, INPUT_PULLUP);

  pinMode(PIN_ROTARY_1, INPUT);
  pinMode(PIN_ROTARY_2, INPUT);

  pinMode(PIN_SEQ_START, OUTPUT);

	// pin-change-interrupt
	PCICR = 0;
	PCMSK0 = 
		1 << 4 // 8 = PIN_FUNC_BUTTON
		| 1 << 5 // 9 = PIN_ROTARY_1
	;
	PCICR = 
		1 // PCIE0
	;

	btn_clr = true;

	for (int i = 0; i < SLOT_MAX; ++i) 
		for (int j = 0; j < SEQ_MAX; ++j) 
			sequence[i][j] = false;

	om.update_current_slot(0);
}


void loop() {

/*
	unsigned char v = 1;
	while(true) {
		emit(v);
		v <<= 1;
		if (v == 0) v = 1;
		serial_log("v= %d", v);
		delay(1000);
	}
*/
/*
		if (cnt_seq == 0) digitalWrite(PIN_SEQ_START, LOW);
		om.out_sequence(cnt_seq, sequence);
		print_seq(sequence, cnt_seq);

	delay(200);

		if (cnt_seq == 0) digitalWrite(PIN_SEQ_START, HIGH);
		cnt_seq += 1;
		if (cnt_seq >= SEQ_MAX) cnt_seq = 0;
		om.clear_sequence();

	delay(200);
// */
}
