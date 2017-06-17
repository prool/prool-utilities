#!/bin/sh
# script for get online count from Byliny
tt++ scr.byl| tee /tmp/byl1.txt | grep -a видимых | tee /tmp/byl2.txt | ./filtr2|awk '{i=0+$2; if (i>0) i=i-1; print "byl.value " i}'|tee /tmp/byl-stat.tmp
cp /tmp/byl-stat.tmp /tmp/byl-stat.txt
