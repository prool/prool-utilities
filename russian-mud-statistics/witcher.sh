#!/bin/sh
# script for get online count from Witcher MUD
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.witcher | tee /tmp/witcher0.txt | grep -a "Сейчас в Мире" | tee /tmp/witcher1.txt | awk '{i=0; i=0+$5; if (i>0) i=i-1; print "witcher.value " i}' | tee /tmp2/witcher.txt| tee -a /tmp2/mudstat.log2
