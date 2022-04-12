#!/bin/sh
# script for get online count from FDungeon
prooltin scr.fdung | tee /tmp2/fdung0.log | grep -a "Всего игроков" | awk '{i=0+$3; if (i>0) i=i-1; print "fdung.value " i}' | tail -1 | tee /tmp2/fdung.txt
