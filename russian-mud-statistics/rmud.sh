#!/bin/sh
# script for get online count from RMUD
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.rmud | tee /tmp/rmud0.txt | grep "смертны" | tail -1 | awk '{i=0+substr($1,8);if (i>0) i=i-1; print "rmud.value " i}' | tee /tmp2/rmud.txt| tee -a /tmp2/mudstat.log2
