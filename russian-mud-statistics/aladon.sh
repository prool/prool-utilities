#!/bin/sh
# script for get online count from Aladon MUD
# tt++ scr.aladon | grep "смертных" | awk '{i=$7-1; if (i<0) i=0;print "adan.value " i}' | tee /tmp/adan.txt
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.aladon | tee /tmp/aladon1.txt | grep "Всего персонажей" | tee /tmp/aladon2.txt | awk '{i=0; i=0+$3; i=i-1; if (i<0) i=0; print "aladon.value " i}' | tee /tmp2/aladon.txt | tee -a /tmp2/mudstat.log2
