#include <readiness_io.h>
#include <Ticker.h>
#include "config.h"


const int       LED_PIN        = 0;     // The pin connecting the LED (D3)
const int       INTERRUPT_PIN  = 14;    // The pin connect the test button (D5)
const int       RAIN_PIN  = 5;        // The pin connect the tipping bucket sensor (D1)
volatile double RAIN_HEIGHT   = 0;     // variable for storing the rain_height

volatile byte interrupt = 0;

readiness_io client(CHANNEL_ID, TOPIC, SENSOR_ID, VERSION, FORMAT);
Ticker timer;


/* Interrupt for counting the number of clicks of the rain gauge */
void rainInterrupt() {
  RAIN_HEIGHT += BUCKETTIP_HEIGHT; // takes the current rain height and add the amount of the bucket
  Serial.print("Curent Rain Height Collected (mm): ");
  Serial.println(RAIN_HEIGHT);
}

void pushButtonInterrupt() {
  interrupt++;
}

/* Interrupt timer for sending data to the Readiness.io server */
void timerInterrupt(){
  interrupt++;
}

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(BUILTIN_LED, OUTPUT);
  digitalWrite(BUILTIN_LED, HIGH); // internal LED is switched on when low - so we have to switch it off/

  Serial.begin(115200);
  Serial.setTimeout(2000);
  while(!Serial) { } // Wait for serial to initialize.
  Serial.println("Device Started");
  Serial.print("Connecting to ");
  Serial.println(WIFI_SSID);
  client.wifiConnection(WIFI_SSID, WIFI_PASS);

  pinMode(RAIN_PIN, INPUT_PULLUP); // Set the interrupt pin for the reed/hall effect
  attachInterrupt(digitalPinToInterrupt(RAIN_PIN), rainInterrupt, RISING);  // Attach the interrupt.

  pinMode(INTERRUPT_PIN, INPUT_PULLUP); // Set the interrupt pin for the pushbutton (optional)
  attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN), pushButtonInterrupt, RISING);  // Attach the interrupt.

  timer.attach(UPDATE_RATE, timerInterrupt);

  client.testConnection();
}


void loop() {
  if(interrupt>0){
    client.publishData(RAIN_HEIGHT);
    RAIN_HEIGHT = 0;  //reset the rain height
    interrupt=0;
    digitalWrite(LED_PIN,HIGH); // LED lights up to indicate that it the data is being transmitted
    delay(250);
    digitalWrite(LED_PIN,LOW);

  }
}
