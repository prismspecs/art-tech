void setup() {
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
}

void loop() {
  // generate a random number 0->9
  int rando = random(10);
  Serial.println(rando);  // print it in console

  delay(1000);  // wait a sec

}
