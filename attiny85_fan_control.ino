// OneWire DS18B20 Temperature Switch on ATtiny85
// http://www.nerdkits.com/forum/thread/2849/
// source: http://www.electroschematics.com/9540/arduino-fan-speed-controlled-temperature/


#include <OneWire.h>


#include <SoftwareSerial.h>
#define SERIAL_RX -1
#define SERIAL_TX 2
SoftwareSerial mySerial(SERIAL_RX, SERIAL_TX); // RX, TX

// fan switch temperatures
#define TEMP_MIN 40 // C°
#define TEMP_MAX 100 // C°
// #define FT_START 3000 // msec
#define FT_START 5000 // msec
#define DELAY_TIMEOUT	1000
// #define PWM_MIN 70 // минимальное значение pwm
// #define PWM_MIN 65 // минимальное значение pwm
// #define PWM_MIN 55 // минимальное значение pwm
#define PWM_MIN_1 35 // минимальное значение pwm
#define PWM_MAX_1 255 // максимальное значение pwm
#define PWM_MIN_2 36 // минимальное значение pwm
#define PWM_MAX_2 255 // максимальное значение pwm
// pins
// ATMEL ATTINY45 / ARDUINO
//                           +-\/-+
//  Ain0       (D  5)  PB5  1|    |8   VCC
//  Ain3       (D  3)  PB3  2|    |7   PB2  (D  2)  INT0  Ain1
//  Ain2       (D  4)  PB4  3|    |6   PB1  (D  1)        pwm1
//                     GND  4|    |5   PB0  (D  0)        pwm0
//                           +----+
#define DS_1 3
#define DS_2 4
// #define STATUS_LED  2
#define FAN_1 1
#define FAN_2 0
  
OneWire ds1(DS_1);  // Dallas one wire data buss pin, a 4.7K resistor pullup is needed
OneWire ds2(DS_2);  // Dallas one wire data buss pin, a 4.7K resistor pullup is needed

 
void setup() {
	mySerial.begin(9600);
	
	
	pinMode(FAN_1, OUTPUT);
    pinMode(FAN_2, OUTPUT);
    
	// pinMode(STATUS_LED, OUTPUT);

	// delay(1000);
	// расскрутить после включения на максимум на время FT_START и после выставить минимальную скорость
	analogWrite(FAN_1, PWM_MAX_1);
	analogWrite(FAN_2, PWM_MAX_2);
	delay(FT_START);
	analogWrite(FAN_1, PWM_MIN_1);
	analogWrite(FAN_2, PWM_MIN_2);
}

void loop() {
	
	delay(DELAY_TIMEOUT);
	mySerial.print(F("ds1"));
	int temp1 = GetMaxTemperature(&ds1);
	mySerial.print(F("ds2"));
	int temp2 = GetMaxTemperature(&ds2);
	int maxTemp = max(temp1, temp2);
	
	mySerial.print(F("fan1;"));
	SetFanSpeedWithTemp(FAN_1, maxTemp, PWM_MIN_1, PWM_MAX_1);
    mySerial.print(F("fan2;"));
	SetFanSpeedWithTemp(FAN_2, maxTemp, PWM_MIN_2, PWM_MAX_2);
}


int16_t GetMaxTemperature(OneWire *Sensor) {
	byte data[12];
	int16_t raw = 0;
	int16_t celsius = 0;
	int16_t maxValue = 0;
	
	byte addr[8];
	
	Sensor->reset_search();
	
	while(Sensor->search(addr)) {
		Sensor->reset();       // reset one wire buss
		Sensor->select(addr);
		Sensor->write(0x44);   // start conversion
		// delay(1000);                     // wait for the conversion 
		Sensor->reset();
		// Sensor->skip();
		Sensor->select(addr);
		Sensor->write(0xBE);   // Read Scratchpad
		for (byte i = 0; i < 9; i++) {       // 9 bytes
			data[i] = Sensor->read();
		} 
		// Convert the data to actual temperature
		raw = (data[1] << 8) | data[0];
		celsius = raw / 16;
		
		mySerial.print(F(";"));
		printAddress(addr);
		mySerial.print(F(";"));
		mySerial.print(celsius);
		
		// обновить максимальное значение
		if (celsius > maxValue) {
			maxValue = celsius;
		}
	}
	Sensor->reset_search();
	
	mySerial.println(F(""));
	
	return maxValue;
}

void printAddress(byte *deviceAddress) {
  for (uint8_t i = 0; i < 8; i++)
  {
    // zero pad the address if necessary
    if (deviceAddress[i] < 16) Serial.print("0");
    mySerial.print(deviceAddress[i], HEX);
  }
}

void SetFanSpeedWithTemp(int fanPin, int temp, int pwmMin, int pwmMax) {
	int fanSpeed = pwmMin;
	// if(temp < TEMP_MIN) {   // if temp is lower than minimum temp
		// fanSpeed = 0;      // fan is not spinning
		// digitalWrite(fanPin, LOW);       
	// } 
	if(temp < TEMP_MIN) {
		analogWrite(fanPin, pwmMin);       
	} 
	if((temp >= TEMP_MIN) && (temp <= TEMP_MAX)) {  // if temperature is higher than minimum temp
		fanSpeed = map(temp, TEMP_MIN, TEMP_MAX, pwmMin, pwmMax); // the actual speed of fan
		analogWrite(fanPin, fanSpeed);  // spin the fan at the fanSpeed speed
	} 

	if(temp > TEMP_MAX) {        // if temp is higher than tempMax
		fanSpeed = pwmMax;
	}
	// if(temp > TEMP_MAX) {        // if temp is higher than tempMax
		// digitalWrite(STATUS_LED, HIGH);  // turn on led 
	// } else {                    // else turn of led
		// digitalWrite(STATUS_LED, LOW); 
	// }
	int fanPrecent = map(fanSpeed, pwmMin, pwmMax, 0, 100);
	
	mySerial.print(temp);      // display the temperature
	mySerial.print(F(";C;"));
	mySerial.print(fanPrecent);    // display the fan speed
	mySerial.print(F(";%;"));
	mySerial.print(fanSpeed);    // display the fan speed
	mySerial.println(F(";pwm"));
}

