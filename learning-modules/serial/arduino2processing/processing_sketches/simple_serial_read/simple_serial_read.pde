import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port

void setup() {
  size(200, 200);
  
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

void draw() {
  if ( myPort.available() > 0) {  // If data is available,
  
  println(myPort.readString());
  //myPort.readString();
    val = myPort.read();         // read it and store it in val
  }

  background(val);             // Set background to white
}
