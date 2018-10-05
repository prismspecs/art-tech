void setup() {

  // turn the pins on!
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);

  // lets us use println
  Serial.begin(9600);

  // analog values are 0->1023
  // get the analog value from pin 0
  // which will be sort of random because
  // of electro-static
  int analogValue = analogRead(0);

  // print out that value
  Serial.println(analogValue);

  // use this as our random seed
  randomSeed(analogValue);

  // generate a random number 0->5
  int rando = random(6);
  Serial.println(rando);  // print it in console

  // if random number generates a 0...
  if (rando == 0) {
    digitalWrite(3, LOW); // dont turn any on
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  }
  // if random number generates a 1...
  if (rando == 1) {
    digitalWrite(3, HIGH); // turn one on
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  }
  if (rando == 2) {
    digitalWrite(3, HIGH); // turn two on
    digitalWrite(4, HIGH);
    digitalWrite(5, LOW);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  }
  if (rando == 3) {
    digitalWrite(3, HIGH); // turn three on
    digitalWrite(4, HIGH);
    digitalWrite(5, HIGH);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  }
  if (rando == 4) {
    digitalWrite(3, HIGH); // turn four on
    digitalWrite(4, HIGH);
    digitalWrite(5, HIGH);
    digitalWrite(6, HIGH);
    digitalWrite(7, LOW);
  }
  if (rando == 5) {
    digitalWrite(3, HIGH); // turn five on
    digitalWrite(4, HIGH);
    digitalWrite(5, HIGH);
    digitalWrite(6, HIGH);
    digitalWrite(7, HIGH);
  }
}

void loop() {




  //delay(1000);  // wait a sec

}
