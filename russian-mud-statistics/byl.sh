#!/bin/sh
# script for get online count from Byliny
tt++ scr.byl| tee /tmp/byl1.txt | grep -a видимых | tee /tmp/byl2.txt | ./filtr2|awk '{print "byl.value " $2-1}'|tee /tmp/byl-stat.tmp
cp /tmp/byl-stat.tmp /tmp/byl-stat.txt
