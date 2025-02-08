#include <Arduino.h>
#include <unity.h>

#define LED_BUILTIN 4
#define DELAY_PER_LOOP 10
#define MAX_DELAY (3000 + DELAY_PER_LOOP)
#define MAX_LOOPS (MAX_DELAY / DELAY_PER_LOOP)

void setUp(void)
{
  // set stuff up here
}

void tearDown(void)
{
  // clean stuff up here
}

void test_led_builtin_pin_number(void)
{
  TEST_ASSERT_EQUAL(4, LED_BUILTIN);
}

void test_led_state_high(void)
{
  int loops = 0;
  while ((digitalRead(LED_BUILTIN) == LOW) && (loops < MAX_LOOPS))
  {
    delay(DELAY_PER_LOOP);
    loops++;
  }
  TEST_ASSERT_EQUAL(HIGH, digitalRead(LED_BUILTIN));
}

void test_led_state_low(void)
{
  int loops = 0;
  while ((digitalRead(LED_BUILTIN) == HIGH) && (loops < MAX_LOOPS))
  {
    delay(DELAY_PER_LOOP);
    loops++;
  }
  TEST_ASSERT_EQUAL(LOW, digitalRead(LED_BUILTIN));
}

void setup()
{
  // NOTE!!! Wait for >2 secs
  // if board doesn't support software reset via Serial.DTR/RTS
  delay(2000);

  pinMode(LED_BUILTIN, OUTPUT);

  UNITY_BEGIN(); // IMPORTANT LINE!
  RUN_TEST(test_led_builtin_pin_number);
}

uint8_t i = 0;
uint8_t max_blinks = 5;

void loop()
{
  if (i < max_blinks)
  {
    RUN_TEST(test_led_state_high);
    RUN_TEST(test_led_state_low);
    i++;
  }
  else if (i == max_blinks)
  {
    UNITY_END(); // stop unit testing
  }
}