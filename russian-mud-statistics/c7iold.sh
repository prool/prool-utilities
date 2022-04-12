#!/bin/sh
prooltin scr.c7 | grep "Всего" | awk '{i=0+substr($2,8); if (i>0) i=i-1; print "c7i.value " i}' | tee /tmp2/c7i.lst
