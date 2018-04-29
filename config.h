/* ------------------------------------ */
/* Customise the values in this section */
/* -------------BEGIN------------------ */

const String    CHANNEL_ID    = "n5n09k7grwjf0zdc"; // The Readiness.io channel ID
const String    SENSOR_ID     = "8037f2a0-4166-11e8-a0cc-db8ed6c6ffaa"; // Your AgriWebb or made up sensor ID
const String    TOPIC         = "rain-gauge"; // The type of sensor or name of the data your sending
const String    VERSION       = "1";
const String    FORMAT        = "agriwebb";

const char*     WIFI_SSID     = "FarmerNet"; // Your WiFi SSID / name
const char*     WIFI_PASS     = "SwitchNode37294"; // Your WiFi password

const uint16_t  UPDATE_RATE   = 120; // How long to wait between sending data back (in seconds)
const uint8_t   TIMEZONE_OFFSET = 10; // The timezone the sensor is located in (eg. 10 for GMT)

const double    BUCKETTIP_HEIGHT = 0.1298;  // The height of rain collected by a single bucket tip (in millimietre)
                                            // determined by the volume of water collection in a single bucket tip (mL
                                            // divided by the collection area
