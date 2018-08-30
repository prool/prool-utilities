#!/bin/sh
# script for get online count from Byliny, port 4000
tt++ scr.byl | grep Online | awk '{print "byl.value " $2}' | tee /tmp2/byl-stat.txt
