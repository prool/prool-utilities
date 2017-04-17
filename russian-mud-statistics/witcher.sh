#!/bin/sh
# script for get online count from Witcher MUD
tt++ scr.witcher | grep "Сейчас в Мире" | awk '{i=0; i=0+$5; if (i>0) i=i-1; print "witcher.value " i}' | tee /tmp/witcher.txt