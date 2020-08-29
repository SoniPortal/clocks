# clocks
Various clocks (time systems) made in Processing.

## Descriptions of time systems
All numbers in descriptions are represented in decimal (base 10) unless otherwise specified.

### hex (Hexadecimal time)
The day is subdivided into 16 hexadecimal "hours", which are each subdivided into 256 hexadecimal "minutes", which are each subdivided into 16 hexadecimal "seconds". All numbers are represented in hexadecimal in the program and different time units are separated by underscores.

This happens to be exactly like the hexadecimal time described in http://www.intuitor.com/hex/hexclock.html.

### truebin (Binary time)
The day is subdivided into 65536 units. The number of units elapsed since midnight is represented in binary with a black circle being 0 and a white circle being 1. The circles are put in a square grid read left to right, top to bottom from most significant bit to least significant bit.
