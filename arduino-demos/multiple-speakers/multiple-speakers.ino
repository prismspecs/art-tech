// array of speakers
int speakerCount = 9;  // how many speakers we workin with?
int speaker[] = {5, 6, 7, 8, 9, 10, 11, 12, 13};  // which pin for each?

// what is the frequency of each speaker?
int speakerFrequency[] = {
  1000,
  1500,
  2000,
  2500,
  3000,
  3500,
  4000,
  4500,
  5000
};

// at what time in milliseconds did this speaker start its life cycle?
long startedAt[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};

// keep track of whether it should be on or off
bool speakerOn[] = {false, false, false, false, false, false, false, false, false};

void setup() {
  // loop thru and init all speakers
  for (int i = 0; i < speakerCount; i++) {

    pinMode(speaker[i], OUTPUT);

    // get an accurate started at time for each speaker
    startedAt[i] = micros();

    // and turn it on to begin, I suppose
    digitalWrite(speaker[i], HIGH);
    speakerOn[i] = true;
  }
  //Serial.begin(9600);
}

void loop() {

  // loop thru all speakers
  for (int i = 0; i < speakerCount; i++) {

    // compare the current time in millis to when this speaker turned on
    // is the current time minus the time it started greater than its Frequency?
    if (micros() - startedAt[i] > speakerFrequency[i]) {

      // if so, flip it
      speakerOn[i] = !speakerOn[i]; // this is how you switch a boolean variable
      digitalWrite(speaker[i], speakerOn[i]); // and you can use true/false instead of HIGH/LOW

      // reset started at time
      startedAt[i] = micros();
    }
  }
}
