#!/bin/sh
# script for get online count from FDungeon
tt++ scr.fdung | tee /tmp/fdung0.txt | grep "Всего игроков" | awk '{i=0+$3; if (i>0) i=i-1; print "fdung.value " i}' | tee /tmp2/fdung.txt
