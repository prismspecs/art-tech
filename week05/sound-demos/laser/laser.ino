void setup() {
  
  pinMode(7, OUTPUT); //pin 7 will be outputting voltage

}

void loop() {

  // laser beam sort of sound
  // this happens because the frequency of the sound
  // changes linearly. it starts at a delay of
  // 1000 microseconds and moves to a delay of 4000
  // microseconds, with a step of 50 microseconds
  
    for (int i = 1000; i < 4000; i+=50) {
      digitalWrite(7, HIGH);
      delayMicroseconds(i);
      digitalWrite(7, LOW);
      delayMicroseconds(i);
    }

    delay(500); // delay half second between lasers

}
