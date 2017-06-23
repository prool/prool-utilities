#!/bin/sh
# script for get online count from Adamant Adan
tt++ scr.adan | grep "смертных" | awk '{i=$7-1; if (i<0) i=0;print "adan.value " i}' | tee /tmp2/adan.txt
