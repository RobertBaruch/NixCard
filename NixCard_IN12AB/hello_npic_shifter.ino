#include <SPI.h>

// Arduino wiring:
//
// Nixie board LE to Arduino pin 2
// Nixie board OE to Arduino pin 3
// Nixie board DIN to Arduino pin 11 (aka MOSI)
// Nixie board CP to Arduino pin 13 (aka SCK)
//
// You can daisy-chain a Nixie board's DOUT to the next board's DIN, but
// all CP must be connected to CP, all LE must be connected to LE, and all
// OE pins must be connected to OE.
//
// Also remember to hook up +5V, GND, and +145 - 155 volts.

#define SHIFTER_LE 2
#define SHIFTER_OE 3
#define SPI_RATE_HZ 1000000
#define LE_PULSE_USEC 1

void setup() {
  pinMode(SHIFTER_LE, OUTPUT);
  pinMode(SHIFTER_OE, OUTPUT);
  digitalWrite(SHIFTER_OE, LOW);
  digitalWrite(SHIFTER_LE, LOW);
    
  SPI.begin();
  SPI.beginTransaction(SPISettings(SPI_RATE_HZ, MSBFIRST, SPI_MODE0));
}

// Valid characters for str are space and 0-9.
// Data for characters will be shifted leftmost character
// first. Thus, it's expected that your data in wire
// is on the rightmost board.
// 
// The boolean array must be the same size as the string,
// and each element is true if you want the dot lit up
// at that position. Remember that dots are on the left.

void writeString(char *str, bool *dots) {
  int bits = strlen(str) * 12;
  int bytes = (bits + 7) / 8;
  
  uint8_t data[bytes];
  int index = bytes - 1;
  
  for (int i = 0; i < strlen(str); i += 2) {
    char c = str[i];
    uint16_t b = 0;
    
    // 0x001 = .
    // 0x002 = 0
    // 0x004 = 1 and so on.

    if (c >= '0' && c <= '9') b = 0x002 << (c - '0');
    if (dots[i]) b |= 0x001;

    data[index] = b >> 4;
    data[index + 1] = (b << 4) & 0xFF;

    if (i >= strlen(str)) break;
    
    c = str[i + 1];
    b = 0;
    if (c >= '0' && c <= '9') b = 0x002 << (c - '0');
    if (dots[i + 1]) b |= 0x001;

    data[index + 1] |= b >> 8;
    data[index + 2] = b & 0xFF;

    index += 3;
  }

  for (int i = bytes - 1; i >= 0; i--) {
    SPI.transfer(data[i]);
  }

  // Pulse LE to latch the data
  digitalWrite(SHIFTER_LE, HIGH);
  delayMicroseconds(LE_PULSE_USEC);
  digitalWrite(SHIFTER_LE, LOW);

  // Enable output, if it wasn't enabled before.
  digitalWrite(SHIFTER_OE, HIGH);
}

void loop() {
  bool dots[] = {false, true, false, false, false, false};
  writeString("314159", dots);
}

