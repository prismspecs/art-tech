void setup() {

  Serial.begin(9600);
}

void loop() {

  int potVal = analogRead(0);

  Serial.println(potVal);
  
}
