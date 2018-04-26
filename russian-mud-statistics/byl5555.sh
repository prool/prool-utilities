#!/bin/sh
# script for get online count from Byliny
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr5555.byl| tee /tmp/byl5555-1.txt | grep -a видимых | tee /tmp/byl5555-2.txt | ./filtr2|awk '{i=0+$2; if (i>0) i=i-1; print "byl5555.value " i}'|tee /tmp/byl5555-stat.tmp| tee -a /tmp2/mudstat.log2
cp /tmp/byl5555-stat.tmp /tmp2/byl5555-stat.txt
