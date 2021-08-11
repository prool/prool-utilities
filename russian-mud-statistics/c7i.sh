#!/bin/sh
tt++ scr.c7 | tee /tmp2/c7i_0.log | grep -a "Всего" | awk '{i=0+substr($2,8); if (i>0) i=i-1; print "c7i.value " i}' | tail -1 | tee /tmp2/c7i.txt
