#include <Wifi_stuff.h>
#include <WiFi.h>

void setup_wifi()
{
    // WiFi
    WiFi.mode(WIFI_OFF); // TODO turn on WiFi later for firmware updates
}

void loop_wifi()
{
}








// TODO: when to run firmware update?
// At startup = after power on reset?
// Every day at 0:00?
// And only when nieuwe_firwmare.txt contains "ja" ?




// #include <WiFi.h>
// #include <HTTPClient.h>
// #include <Update.h>

// #define HOST "https://www.ouderraadgroteheide.be/regenboogpiano_firmware/rainbow_ring.bin"

// HTTPClient client;
// char* ssid = "WLAND_gast";
// char* password = "eenvoudig";
// int totalLength;
// int currentLength = 0;


// // Function to update firmware incrementally
// // Buffer is declared to be 128 so chunks of 128 bytes
// // from firmware is written to device until server closes
// void updateFirmware(uint8_t *data, size_t len){
//   Update.write(data, len);
//   currentLength += len;
//   // Print dots while waiting for update to finish
//   // Serial.print('.');
//   // if current length of written firmware is not equal to total firmware size, repeat
//   if(currentLength != totalLength) return;
//   Update.end(true);
//   Serial.printf("\nUpdate Success, Total Size: %u\nRebooting...\n", currentLength);
//   // Restart ESP32 to see changes 
//   ESP.restart();
// }



// void setup() {
//   Serial.begin(115200);
//   // Start WiFi connection
//   // WiFi.mode(WIFI_MODE_STA);        
//   WiFi.begin(ssid, password);
//   while (WiFi.status() != WL_CONNECTED) {
//       delay(500);
//       Serial.print(".");
//   }

//   Serial.println("");
//   Serial.println("WiFi connected");
//   Serial.println("IP address: ");
//   Serial.println(WiFi.localIP());
//   // Connect to external web server
//   client.begin(HOST);
//   // Get file, just to check if each reachable
//   int resp = client.GET();
//   Serial.print("Response: ");
//   Serial.println(resp);
//   // If file is reachable, start downloading
//   if(resp == 200){
//       // get length of document (is -1 when Server sends no Content-Length header)
//       totalLength = client.getSize();
//       // transfer to local variable
//       int len = totalLength;
//       // this is required to start firmware update process
//       Update.begin(UPDATE_SIZE_UNKNOWN);
//       Serial.printf("FW Size: %u\n",totalLength);
//       // create buffer for read
//       uint8_t buff[128] = { 0 };
//       // get tcp stream
//       WiFiClient * stream = client.getStreamPtr();
//       // read all data from server
//       Serial.println("Updating firmware...");
//       while(client.connected() && (len > 0 || len == -1)) {
//            // get available data size
//            size_t size = stream->available();
//            if(size) {
//               // read up to 128 byte
//               int c = stream->readBytes(buff, ((size > sizeof(buff)) ? sizeof(buff) : size));
//               // pass to function
//               updateFirmware(buff, c);
//               if(len > 0) {
//                  len -= c;
//               }
//            }
//            delay(1);
//       }
//   }else{
//     Serial.println("Cannot download firmware file");
//   }
//   client.end();
  
// }
