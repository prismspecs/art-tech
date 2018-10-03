void setup() {
  pinMode(7, OUTPUT); //pin 7 will be outputting voltage
}

void loop() {

  // create a random delay
  int del = random(10) + 1;

  // using a for loop, we can get these notes
  // to sustain themselves
  for (int i = 0; i < 20; i++) {
    digitalWrite(7, HIGH);
    delay(del);
    digitalWrite(7, LOW);
    delay(del);
  }
  
  // you could even consider giving the i < 20 a random
  // integer instead, to vary the length of notes

//  for (int i = 0; i < random(100); i++) {
//    digitalWrite(7, HIGH);
//    delay(del);
//    digitalWrite(7, LOW);
//    delay(del);
//  }
}
