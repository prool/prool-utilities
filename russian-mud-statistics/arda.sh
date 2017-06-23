#!/bin/sh
# script for get online count from Arda MUD
tt++ scr.arda | grep "игрок" | tee /tmp/arda1.txt | tail -1 | tee /tmp/arda2.txt | awk '{i=substr($1,10);if (i>0) i=i-1;print "arda.value " i}' | tee /tmp2/arda.txt