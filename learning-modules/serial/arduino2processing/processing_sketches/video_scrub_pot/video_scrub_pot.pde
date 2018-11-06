import processing.serial.*;  // import serial library
Serial myPort;  // Create object from Serial class
int val;        // Data received from the serial port
 
import processing.video.*;  // import video library
Movie mov;      // create video object
 
void setup() {
  size(1042,696);
  
  // remember to set your serial port...
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  // we're going to be parsing the serial data as a string this time: the following
  // helps make sure we get all the info when reading an entire string
  myPort.bufferUntil('\n');  
  
  // load in movie
  mov = new Movie(this, "tr1.mov");
  // Pausing the video at the first frame. 
  mov.play();
  mov.jump(0);
  mov.pause();
 
  // basic drawing properties
  fill(255);
  noStroke();
}
 
void draw() {
  // is there serial data available?
  while (myPort.available() > 0) {
    
    // cool, read it in as a string
    String inBuffer = myPort.readStringUntil('\n');   
    
    // make sure you actually got something useful
    if (inBuffer != null) {
      
      // get rid of extra characters like spaces
      inBuffer = trim(inBuffer);
      
      // convert it to an int
      val = int(inBuffer);
    }
  }
  
  // for our eyes
  println(val);
  
  // if the movie is playing
  if (mov.available()) {
    mov.read();  // read a new frame
    
    // map the incoming serial value from 0 -> 1023 to
    // 0 -> the movie duration
    float mappedPotVal = map(val, 0, 1023, 0, mov.duration());
    
    // play, jump, pause to new position
    mov.play();
    mov.jump(mappedPotVal);
    mov.pause();
  }  
 
  // actually display the movie.
  image(mov, 0, 0);
}
