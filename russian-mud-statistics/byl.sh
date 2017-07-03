#!/bin/sh
# script for get online count from Byliny
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.byl| tee /tmp/byl1.txt | grep -a видимых | tee /tmp/byl2.txt | ./filtr2|awk '{i=0+$2; if (i>0) i=i-1; print "byl.value " i}'|tee /tmp/byl-stat.tmp| tee -a /tmp2/mudstat.log2
cp /tmp/byl-stat.tmp /tmp2/byl-stat.txt
