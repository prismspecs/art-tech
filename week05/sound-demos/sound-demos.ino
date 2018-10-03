int stepNote = 1000;

void setup() {
  //pin 7 will be outputting voltage
  pinMode(7, OUTPUT);

}

void loop() {

  // create a random delay
  //int del = random(4) + 1;

  // stepNote changes the note every loop
  for (int i = 0; i < 100; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(stepNote);
    digitalWrite(7, LOW);
    delayMicroseconds(stepNote);
  }

  stepNote += 20;

  // laser beam sort of sound
  
  //    for (int i = 20; i > 1; i--) {
  //      digitalWrite(7, HIGH);
  //      delay(i);
  //      digitalWrite(7, LOW);
  //      delay(i);
  //    }

  // laser beam sort of sound with greater resolution
  
  //  for (int i = 1000; i < 4000; i+=100) {
  //    digitalWrite(7, HIGH);
  //    delayMicroseconds(i);
  //    digitalWrite(7, LOW);
  //    delayMicroseconds(i);
  //  }

}
