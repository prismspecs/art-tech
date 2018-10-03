void setup() {
  pinMode(7, OUTPUT); //pin 7 will be outputting voltage
}

void loop() {

  // create a random delay
  int del = random(10) + 1;

  // since these notes are so fast, the result
  // is basically static or noise. see random_notes
  // for a use of random that isn't noise
  digitalWrite(7, HIGH);
  delay(del);
  digitalWrite(7, LOW);
  delay(del);
}
