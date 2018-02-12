#include <WiFi.h>
#include <HTTPClient.h>
#include <SPI.h>

// Simple 6-digit XRP/USD display for ESP32 Thing.
// Queries Bitstamp every 15 seconds, parses out the
// last XRP/USD price.

// Nixie board LE to ESP32 Thing pin 17
// Nixie board OE to ESP32 Thing pin 16
// Nixie board DIN to ESP32 Thing pin 23 (aka MOSI)
// Nixie board CLK to ESP32 Thing pin 18 (aka SCK)

const int SHIFTER_LE = 17;
const int SHIFTER_OE = 16;
const int SPI_RATE_HZ = 1000000;
const int LE_PULSE_USEC = 1;

// WiFi network name and password:
const char* kWifiSSID = "Pixel";  // Your WiFi SSID here
const char* kWifiPassword = "funfun481pixel76";  // Your WiFi password here

const int BUTTON_PIN = 0;
const int LED_PIN = 5;
int led_state = 0;
WiFiClient client;

void toggle_led() {
    digitalWrite(LED_PIN, led_state);
    led_state = 1 - led_state;
}

void setup()
{
  // Initilize hardware:
  pinMode(BUTTON_PIN, INPUT_PULLUP);
  pinMode(LED_PIN, OUTPUT);
  
  pinMode(SHIFTER_LE, OUTPUT);
  pinMode(SHIFTER_OE, OUTPUT);
  digitalWrite(SHIFTER_OE, LOW);
  digitalWrite(SHIFTER_LE, LOW);
    
  SPI.begin();
  SPI.beginTransaction(SPISettings(SPI_RATE_HZ, MSBFIRST, SPI_MODE0));

  Serial.begin(115200);
  connectToWiFi(kWifiSSID, kWifiPassword);  
  digitalWrite(LED_PIN, LOW); // LED off
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

constexpr const char* kKey = "\"last\": \"";
constexpr size_t kKeySize = strlen(kKey);

bool valid_char(const char c) {
  return c == '.' || (c >= '0' && c <= '9');
}
void output(const char* payload) {
  const char* loc = strstr(payload, kKey);
  
  if (loc == nullptr) {
    Serial.println("Failed to parse json");
    return;
  }

  loc += kKeySize;
  char digits[7] = {0};
  bool dots[sizeof(digits) - 1] = {0};
  
  size_t i = 0;
  for (const char* ptr = loc; valid_char(*ptr); ptr++) {
    if (*ptr == '.') {
      dots[i] = true;
      continue;
    }
    digits[i++] = *ptr;
    if (i >= sizeof(digits) - 1) break;
  }
  writeString(digits, dots);
}

void loop()
{
  HTTPClient http;

  digitalWrite(LED_PIN, HIGH);
  http.begin("https://www.bitstamp.net/api/v2/ticker/xrpusd/");
  int httpCode = http.GET();

  // httpCode will be negative on error
  if (httpCode > 0) {
    if (httpCode == HTTP_CODE_OK) {
      const char* payload = http.getString().c_str();
      Serial.println(payload);
      output(payload);
    } else {
      Serial.printf("[HTTP] GET return http code %d\n", httpCode);
    }
  } else {
    Serial.printf("[HTTP] GET... failed: %s\n",
        http.errorToString(httpCode).c_str());
  }

  http.end();
  
  digitalWrite(LED_PIN, LOW);
  delay(15000);  // Don't spam
}

void connectToWiFi(const char* ssid, const char* pwd)
{
  Serial.println();
  Serial.println("Connecting to WiFi...");

  WiFi.begin(ssid, pwd);

  while (WiFi.status() != WL_CONNECTED) 
  {
    toggle_led();
    delay(500);
  }
  Serial.println("Connected.");
}

