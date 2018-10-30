#include <Servo.h>

Servo servo1, servo2, servo3;

int pos = 0;    // variable to store the servo position

void setup() {
  servo1.attach(3);
  servo2.attach(4);
  servo3.attach(5);

  Serial.begin(9600);
}

void loop() {

  int mapped1 = map(analogRead(0), 0, 1023, 20, 160);
  int mapped2 = map(analogRead(1), 0, 1023, 20, 160);
  int mapped3 = map(analogRead(2), 0, 1023, 20, 160);

  servo1.write(mapped1);
  servo2.write(mapped2);
  servo3.write(mapped3);

  Serial.print(mapped1);
  Serial.print(", ");
  Serial.print(mapped2);
  Serial.print(", ");
  Serial.print(mapped3);
  Serial.println(", ");

  delay(20);

}

