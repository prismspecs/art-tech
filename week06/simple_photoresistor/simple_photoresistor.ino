// the photoresistor will be in ANALOG pin 4
int photoPin = 4;

void setup() {
  // we're going to monitor the analog values
  Serial.begin(9600);
}

void loop() {

  // create a variable photoVal and give it
  // the value of that analog pin the photoresistor
  // is connected to
  int photoVal = analogRead(photoPin);

  // print out the value in serial monitor
  Serial.println(photoVal);

}
