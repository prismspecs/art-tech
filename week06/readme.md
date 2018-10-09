# week06

## Announcements

## Relevant work

+ [Tempescope](https://www.tempescope.com/)
	+ Weather outside is represented in a cube (clouds etc)
+ [Waves](https://vimeo.com/20500963)
	+ Installation responds to waves in the ocean
+ [Birdhouse](https://www.kickstarter.com/projects/1768080598/birdhouse-an-internet-of-things-work-of-art)
	+ Bird flies between these objects around the globe
+ [Brian House - Animas](https://brianhouse.net/works/animas/)

## Tuesday

### Arduino Lab

Wiring diagrams:
![potentiometer](potentiometer.png)
![photoresistor](photoresistor.png)

+ [Potentiometers](https://www.arduino.cc/en/tutorial/potentiometer)
+ [Photoresistors](https://www.arduino.cc/en/Tutorial/AnalogInput)

+ Topics covered
	+ Using variables to keep track of pins
	```c
	int speakerPin = 7;
  pinMode(speakerPin, OUTPUT);
	```
	+ potentiometer - analogRead
		+ Note that analog pins don't require pinMode
	+ multimeter (volt and resistance measuring tool)
	+ Serial.println() takes some time to run, so it can mess with the timing of your sketch
	+ map() function (works just like Processing)
	+ photoresistor - analogRead
		+ build a light detector that turns on an LED (or otherwise reacts) to light being off in the room
			+ threshold
			+ conditional logic based on sensor input

+ Suggestions using pots and photoresistors
	+ Theramin
	+ Light blinking pattern based on potentiometer
	+ Use both sensors to drive sound or light output

## Thursday

+ Discuss
	+ [Interview with Natalie Jeremijenko](http://www.situatedtechnologies.net/files/ST3-SituatedAdvocacy_web.pdf)

## Homework

+
