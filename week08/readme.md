# week08

## Announcements

## Relevant work

## Tuesday

+ Mini-Zimoun lab

## Thursday

+ ~~Cereal~~ Serial Communication
	+ We will send data from Arduino to Processing

+ copy/paste code to set up serial comms
```c
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
```

+ Challenges
	+ Use multiple potentiometers to adjust color
	+ Use the photo resistor to brighten the background color the darker the surrounding light
	+ Create an etcha-sketch type device with 2 pots
	+ Use the button to change colors

## Homework

+ Make (or modify) a drawing app that uses physical input from Arduino
+ Seek out and write briefly about 2 physical computing projects that you find interesting, post to Slack. The following links will help get you started:
	+ [List of Physcom Artists](http://graysonearle.com/edu/physcom/relevant-projects-artists/)
	+ ["Arduino" search on Instructables](https://www.instructables.com/technology/arduino/)
	+ [List of Arduino projects from Hackster](https://www.hackster.io/arduino/projects)
	+ [List on Pintrest](https://www.pinterest.com/annlepore/physical-computing/)