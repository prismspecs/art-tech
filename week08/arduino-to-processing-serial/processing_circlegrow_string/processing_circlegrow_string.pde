import processing.serial.*;

Serial myPort;

// these will store incoming arduino values
String valString;

void setup() {
  size(666, 666);

  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  background(9);
  
  // if there's data available to read
  while( myPort.available() > 0) {
    // read it as a string and store to variable...
    valString = myPort.readStringUntil(10);
  }
  
  // there's some extra white space on the string
  // so we have to use trim() to cut it off,
  // then convert it to an integer using int()
  int diameter = int(trim(valString));
  
  // print it out
  println(diameter);
  
  // make the circle grow n shrink
  ellipse(width/2, height/2, diameter, diameter);
  
}
