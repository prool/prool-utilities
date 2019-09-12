#!/bin/sh
# script for get online count from Adamant Adan
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.adan | tee /tmp/adan.log | grep -a "смертных" | awk '{i=$7-1; if (i<0) i=0;print "adan.value " i}' | tee /tmp2/adan.txt| tee -a /tmp2/mudstat.log2
