#include <RFID.h>
#include <MFRC522.h>

// RFID reader
MFRC522 mfrc522(PIN_RFID_CS, PIN_RFID_RESET);  // Create MFRC522 instance
void dump_byte_array(byte *buffer, byte bufferSize);

void setup_RFID()
{
    SPI.begin(PIN_RFID_SCK, PIN_RFID_MISO, PIN_RFID_MOSI, PIN_RFID_CS);
    mfrc522.PCD_Init();
    delay(4); // Optional delay. Some board do need more time after init to be ready, see Readme
    mfrc522.PCD_SetAntennaGain(mfrc522.RxGain_max);
}

bool check_for_RFID()
{
    if (mfrc522.PICC_IsNewCardPresent())
    {
        if (mfrc522.PICC_ReadCardSerial())
        {
            // Serial.print(F("Card UID:"));
            // mfrc522.PICC_DumpToSerial(&(mfrc522.uid));
            // dump_byte_array(mfrc522.uid.uidByte, mfrc522.uid.size);
            // Serial.println(F(""));
            // mfrc522.PICC_HaltA();
        }
        return true;
    }
    else
    {
        return false;
    }
}


void dump_byte_array(byte *buffer, byte bufferSize) {
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
    Serial.print(buffer[i], HEX);
  }
}
