#include <SPI.h>

// Arduino wiring:
//
// Nixie board LE to Arduino pin 4
// Nixie board OE to Arduino pin 3
// Nixie board DIN to Arduino pin 11 (aka MOSI)
// Nixie board CP to Arduino pin 13 (aka SCK)
//
// You can daisy-chain a Nixie board's DOUT to the next board's DIN, but
// all CP must be connected to CP, all LE must be connected to LE, and all
// OE pins must be connected to OE.
//
// Also remember to hook up +5V, GND, and +145 - 155 volts.

#define SHIFTER_LE 4
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
//
// bit patterns: (note that we transmit byte0, then byte1 (big endian)
// byte0      --byte1--
// xxxx x000  0000 0001 : 0
// xxxx x000  0000 0010 : 1
// xxxx x000  0000 0100 : 2
// xxxx x000  0000 1000 : 3
// xxxx x000  0001 0000 : 4
// xxxx x000  0010 0000 : 5
// xxxx x000  0100 0000 : 6
// xxxx x000  1000 0000 : 7
// xxxx x001  0000 0000 : 8
// xxxx x010  0000 0000 : 9
// xxxx x100  0000 0000 : dot

void writeChar(char* str, bool* dots, uint8_t* data) {
    char c = *str;
    uint16_t b = 0;
    
    if (c >= '0' && c <= '9') b = 0x0001 << (c - '0');
    if (*dots) b |= 0x0400;

    data[0] = b >> 8;
    data[1] = b & 0xFF;
}

void writeString(char *str, bool *dots) {
  int bytes = 2 * strlen(str);
  uint8_t data[bytes];
  int index = 0;
  
  for (int i = 0; i < strlen(str); ++i) {
    writeChar(str + i, dots + i, data + index);
    index += 2;
  }

  for (int i = 0; i < bytes; ++i) {
    SPI.transfer(data[i]);
  }

  // Pulse LE to latch the data
  digitalWrite(SHIFTER_LE, HIGH);
  delayMicroseconds(LE_PULSE_USEC);
  digitalWrite(SHIFTER_LE, LOW);

  // Enable output, if it wasn't enabled before.
  digitalWrite(SHIFTER_OE, HIGH);
  delay(1000);
}

void loop() {
  for (int i = 0; i < 10; ++i) {
    for (int j = 0; j < 10; ++j) {
      for (int k = 0; k < 10; ++k) {
        bool dots[] = {false, j%3 == 2, j%3 == 1, j%3 == 0};
        char data[5] = {' ', '0' + i, '0' + j, '0' + k, 0};
        writeString(data, dots);
      }
    }
  }
}

