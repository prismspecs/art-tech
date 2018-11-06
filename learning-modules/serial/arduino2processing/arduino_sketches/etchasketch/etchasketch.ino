// this sketch sends multiple values as a single
// string over serial. the string itself will
// look like "52,1019" with a newline character
// at the end of the string

void setup() {
  Serial.begin(9600);
}

void loop() {

  // we will read 2 potentiometer values
  int potVal1 = analogRead(0);
  int potVal2 = analogRead(1);

  // now we 'concatinate' or combine numerous values
  // to form a single serial string
  Serial.print(potVal1);  // notice no ln at the end
  Serial.print(",");      // comma-separate the values
  Serial.println(potVal2);  // end this with a newline character

  // that's it!
}
