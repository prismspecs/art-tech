// use a variable in the for loop such that each
// time we move through void loop() each for loop
// takes an additional turn to complete (see below)
int repeatAmount = 1;

void setup() {
  pinMode(7, OUTPUT); //pin 7 will be outputting voltage
}

void loop() {

  // the for loops, start at i = 0 and loop
  // until i is equal to repeatAmount, which
  // starts at 1 and increases every void loop()
  // in other words, the first time loop() happens,
  // the following for loop happens 1 time, the
  // next loop(), it happens twice, then three times...
  for (int i = 0; i < repeatAmount; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(6400);
    digitalWrite(7, LOW);
    delayMicroseconds(6400);
  }

  for (int i = 0; i < repeatAmount; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(4120);
    digitalWrite(7, LOW);
    delayMicroseconds(4120);
  }

  for (int i = 0; i < repeatAmount; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(8000);
    digitalWrite(7, LOW);
    delayMicroseconds(8000);
  }


  for (int i = 0; i < repeatAmount; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(7120);
    digitalWrite(7, LOW);
    delayMicroseconds(7120);
  }

  // loop more the next time
  repeatAmount++;

}
