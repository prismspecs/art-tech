int speakerPin = 9;
int potPin = 5;

void setup() {

  // we will be using the internal pullup
  // resistor inside the Arduino chip and
  // treating the pin as input, since it's
  // a button
  pinMode(5, INPUT_PULLUP);
  pinMode(6, INPUT_PULLUP);
  pinMode(7, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);

  // speakers are output
  pinMode(speakerPin, OUTPUT);

  // just in case
  Serial.begin(9600);

}

void loop() {

  //  Serial.println(digitalRead(7));

  // read from the potentiometer
  int potVal = analogRead(potPin);
  int mappedPot = map(potVal, 0, 1023, 1, 10);

  Serial.println(mappedPot);

  // button on pin 5 pressed
  // so oscillate with 5000 micros delay
  // and use the (i * 800) to augment that
  if (digitalRead(5) == LOW) {
    for (int i = 0; i < mappedPot; i++) {
      digitalWrite(speakerPin, HIGH);
      delayMicroseconds(5000 + (i * 800));
      digitalWrite(speakerPin, LOW);
      delayMicroseconds(5000 + (i * 800));
    }
  }

  // button on pin 6 pressed
  if (digitalRead(6) == LOW) {
    for (int i = 0; i < mappedPot; i++) {
      digitalWrite(speakerPin, HIGH);
      delayMicroseconds(6000 + (i * 800));
      digitalWrite(speakerPin, LOW);
      delayMicroseconds(6000 + (i * 800));
    }
  }

  // button on pin 7 pressed
  if (digitalRead(7) == LOW) {
    for (int i = 0; i < mappedPot; i++) {
      digitalWrite(speakerPin, HIGH);
      delayMicroseconds(7000 + (i * 800));
      digitalWrite(speakerPin, LOW);
      delayMicroseconds(7000 + (i * 800));
    }
  }

  // button on pin 8 pressed
  if (digitalRead(8) == LOW) {
    for (int i = 0; i < mappedPot; i++) {
      digitalWrite(speakerPin, HIGH);
      delayMicroseconds(8000 + (i * 800));
      digitalWrite(speakerPin, LOW);
      delayMicroseconds(8000 + (i * 800));
    }
  }
}
