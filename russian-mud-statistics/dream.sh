#!/bin/sh
# script for get online count from DreanLand
tt++ scr.dream | tee /tmp/dream.log | grep -a "Всего игроков"  | awk '{i=0+$3; if (i>0) i=i-1; print "dream.value " i}' | tee /tmp2/dream.txt
