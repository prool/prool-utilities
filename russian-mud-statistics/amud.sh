#!/bin/sh
# script for get online count from Amud
echo -n `date` " " >> /tmp2/mudstat.log2
prooltin scr.amud | tee /tmp/amud1.txt | grep -a "бессмертных" | tee /tmp/amud2.txt | awk '{i=0+$5; i=i-1; if (i<0) i=0; print "amud.value " i}' | tail -1 | tee /tmp2/amud.txt| tee -a /tmp2/mudstat.log2
