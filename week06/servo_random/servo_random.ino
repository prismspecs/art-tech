#include <Servo.h>

Servo myservo;  // create a servo in code

void setup() {
  // connect the orange wire of the
  // servo to pin 9
  myservo.attach(9);

}

void loop() {

  // generate a random number between 0 and 180
  // and put it in an integer named pos
  int pos = random(180);

  // make the servo go to that angle
  myservo.write(pos);

  // wait a bit
  delay(250);
 
}
