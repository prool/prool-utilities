#!/bin/sh
# script for get online count from RMUD
tt++ scr.neronis | tee /tmp/neronis1.txt | grep "Всего персонажей" | tail -1 | awk '{print "neronis.value " $3-1}' | tee /tmp/neronis.txt
