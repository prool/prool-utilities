#!/bin/sh
# script for get online count from Amud
tt++ scr.amud | tee /tmp/amud1.txt | grep "бессмертных" | tee /tmp/amud2.txt | awk '{i=0+$5; i=i-1; if (i<0) i=0; print "amud.value " i}' | tail -1 | tee /tmp/amud.txt
