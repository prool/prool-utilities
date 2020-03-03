#!/bin/sh
# script for get online count from Shadov realms
tt++ scr.sr | tee /tmp/shadow.log | grep Kolicestvo | awk '{i=0+$3;if (i>0) i=i-1; print "sr.value " i}' | tee /tmp2/sr.txt
