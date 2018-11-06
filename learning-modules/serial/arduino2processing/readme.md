# Serial Communication

Serial communication is a mode of communication that uses a thin but consistent stream of information to transmit data. The type of information it sends is a succession of bytes. A byte is a strand of eight 0 or 1's. The maximum value of a byte is 255, the minimum 0.

In terms of Arduino projects, serial communication typically happens in one of two directions:

1. Sensor data is taken on the Arduino and forwarded to a computer which is running software (like a Processing sketch) that can interpret the data. The software will react in some way, like playing a video, surfing the web, etc.

2. Software is running on a computer (like a Processing sketch) that sends information to Arduino so that it can blink a light, actuate a motor, make a sound, etc.

I will refer to #1 above as Arduino->Processing and #2 as Processing->Arduino in reference to the signal flow of information going from one platform to another.

[Arduino->Processing Guide](arduino2processing/)

[Processing->Arduino Guide](processing2arduino/)
