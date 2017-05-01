# log_parser -- Log Parser

Problem is given a log file like this:
```
<timestamp> Non event
<timestamp> Begin Recording
<timestamp> event a
<timestamp> event b
<timestamp> event c
<timestamp> event d
<timestamp> End Recording
<timestamp> Non event
<timestamp> Non event
<timestamp> Non event
<timestamp> Non event
<timestamp> Begin Recording
<timestamp> event e
<timestamp> event f
<timestamp> End Recording
```
Capture all the 'event x' lines only


Solutions are in Go:

- log_parser.rb - Solution in Ruby. Run with: ./log_parser.rb
