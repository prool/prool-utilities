#!/bin/sh
tt++ scr.wrf | grep -a "Всего игроков" | tail -1 | awk '{i=0+substr($3,21); if (i>0) i=i-1; print "wrf.value " i}' | tee /tmp2/wrf.txt
