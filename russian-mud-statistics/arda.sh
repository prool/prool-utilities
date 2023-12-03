#!/bin/sh
# script for get online count from Arda MUD
echo -n `date` " " >> /tmp2/mudstat.log2
prooltin scr.arda | tee /tmp/arda0.txt | grep -a "игрок" | tee /tmp/arda1.txt | tail -1 | tee /tmp/arda2.txt | awk '{i=substr($1,10);if (i>0) i=i-1; if (i==-1) i=0; print "arda.value " i}' | tee /tmp2/arda.txt| tee -a /tmp2/mudstat.log2
