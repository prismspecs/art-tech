// you could consider turning each sound into
// a variable for ease of use

// here i've decided that a delay of 20000 micros
// for a period of 5 loops sounds kind of like a kick
// drum
int kickFreq = 9700;
int kickLoop = 5;
// i just came up with these values thru experimentation
int snareFreq = 4000;
int snareLoop = 8;
// ok cymbal is a bit of a stretch but it sounds cool
int cymbalFreq = 1200;
int cymbalLoop = 19;

void setup() {
  pinMode(7, OUTPUT); //pin 7 will be outputting voltage
}

void loop() {

  // make a kick drum beat
  for (int i = 0; i < kickLoop; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(kickFreq);
    digitalWrite(7, LOW);
    delayMicroseconds(kickFreq);
  }

  delay(100);  // wait between sounds

  // make a snare beat
  for (int i = 0; i < snareLoop; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(snareFreq);
    digitalWrite(7, LOW);
    delayMicroseconds(snareFreq);
  }

  delay(100);  // wait between sounds

  // make a kick drum beat
  for (int i = 0; i < kickLoop; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(kickFreq);
    digitalWrite(7, LOW);
    delayMicroseconds(kickFreq);
  }

  delay(100);  // wait between sounds

  // make a cymbal beat
  for (int i = 0; i < cymbalLoop; i++) {
    digitalWrite(7, HIGH);
    delayMicroseconds(cymbalFreq);
    digitalWrite(7, LOW);
    delayMicroseconds(cymbalFreq);
  }

  delay(100);  // wait between sounds

}
