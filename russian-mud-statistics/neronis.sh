#!/bin/sh
# script for get online count from RMUD
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.neronis | tee /tmp/neronis1.txt | grep "Всего персонажей" | tail -1 | awk '{i=0+$3; i=i-1; if (i<0) i=0; print "neronis.value " i}' | tee /tmp2/neronis.txt| tee -a /tmp2/mudstat.log2
