# Audio Amplification

This will be a combined soldering + audio amp module workshop. Soldering instructions will happen in class, but you can use this as a reference.

We ordered an un-soldered audio amplifier module to save money and to use it as an opportunity to gain practical soldering experience. Soldering is the process of making connections between conductive materials in electronics. So far we've been using the breadboard, which makes solder-less connections, which are good for prototyping (since you move things around a lot) but bad for committing to a final project design. Soldering makes things more secure, more functional, gives you repair skills, and other advantages.

Here is a look at an unsoldered audio module
![](images/1.png)

Place the screw-terminal and header in the module like so:
![](images/2.png)

Notice that the header has one pin too many. Break it off carefully.
![](images/3.png)

That's better
![](images/4.png)

Solder each header pin to the gold disk it is touching. This allows the free flow of electricity from the chip to the header pin
![](images/5.png)

After I check your work, you can begin building the amp circuit
![](images/6.png)
![](images/7.png)

![wiring guide](images/wiring-pam8302)

```c
void setup() {
  pinMode(7, OUTPUT); //pin 7 will be outputting voltage
}

void loop() {

  // laser beam sort of sound
  // this happens because the frequency of the sound
  // changes linearly. it starts at a delay of
  // 1000 microseconds and moves to a delay of 4000
  // microseconds, with a step of 50 microseconds

    for (int i = 1000; i < 4000; i+=20) {
      digitalWrite(7, HIGH);
      delayMicroseconds(i);
      digitalWrite(7, LOW);
      delayMicroseconds(i);
    }

    delay(500); // delay half second between lasers
}
```
