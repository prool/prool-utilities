#!/bin/sh
# script for get online count from Witcher MUD
tt++ scr.witcher | tee /tmp/witcher0.txt | grep "������ � ����" | tee /tmp/witcher1.txt | awk '{i=0; i=0+$5; if (i>0) i=i-1; print "witcher.value " i}' | tee /tmp2/witcher.txt
