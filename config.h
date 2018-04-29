
const String    CHANNEL_ID    = "XXXXXXXXXXXXXX"; // The Readiness.io channel ID
const String    SENSOR_ID     = "XXXXXXXXXXXXXXX"; // Your AgriWebb or made up sensor ID
const String    TOPIC         = "rain-gauge"; // The type of sensor or name of the data your sending
const String    VERSION       = "1";
const String    FORMAT        = "";

const char*     WIFI_SSID     = "XXXXXXX"; // Your WiFi SSID / name
const char*     WIFI_PASS     = "XXXXXXX"; // Your WiFi password

const uint16_t  UPDATE_RATE   = 120; // How long to wait between sending data back (in seconds)
const uint8_t   TIMEZONE_OFFSET = 10; // The timezone the sensor is located in (eg. 10 for GMT)

const double    BUCKETTIP_HEIGHT = 0.1298;    // Don't forget to change this for your own tipping bucket.
                                             // The height of rain collected by a single bucket tip (in millimietre)
                                            // determined by the volume of water collection in a single bucket tip (mL
                                            // divided by the collection area
