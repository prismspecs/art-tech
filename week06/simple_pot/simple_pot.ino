int potPin = 4;
int speakerPin = 8;

void setup() {
  // enable serial monitor
  Serial.begin(9600);
  // enable speaker output
  pinMode(speakerPin, OUTPUT);
}

void loop() {
  // store the potentiometer pin value to potVal variable
  int potVal = analogRead(potPin);

  // re-map the incoming potentiometer value
  int mappedVal = map(potVal, 0, 1023, 2000, 8000);

  // display that value in serial monitor
  Serial.println(mappedVal);  

  // oscillate the speaker at that frequency
  digitalWrite(speakerPin, HIGH);
  delayMicroseconds(mappedVal);
  digitalWrite(speakerPin, LOW);
  delayMicroseconds(mappedVal);
}
