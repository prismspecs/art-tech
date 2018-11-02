import processing.serial.*;

Serial myPort;

// these will store incoming arduino values
int valInt;
String valString;

void setup() {
  size(666, 666);

  // setting up serial is a bit tricky: you have to figure out
  // what serial port number your Arduino is connected to
  // and this will vary for everyone

  // first you should print the available serial ports
  // in the console to check things out
  // with this handy function:
  printArray(Serial.list());

  // look for something that says "cu.usbmodem" and
  // the corresponding number

  // now use it here at the end in the brackets
  String portName = Serial.list()[1];

  // make sure the baud rate matches the Arduino
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  background(9);
  
  // if there's data available to read
  while( myPort.available() > 0) {
    // read it as a string and store to variable...
    //valString = myPort.readString();
    
    // read it as an integer and store
    valInt = myPort.read();
    
    //println(valString);  // print it out console
  }
  
  ellipse(width/2, height/2, valInt, valInt);
  
  println(valInt);
}
