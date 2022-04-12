#!/bin/sh
# script for get online count from Byliny, port 5555
prooltin scr5555.byl | grep Online | awk '{print "byl5555.value " $2}' | tee /tmp2/byl5555-stat.txt
