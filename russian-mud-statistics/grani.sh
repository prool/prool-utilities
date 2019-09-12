#!/bin/sh
tt++ scr.grani | tee /tmp/grani.txt | grep -a "Сейчас в игре" | awk '{i1=0+$5; i2=0+$7; print "grani.value "i1+i2-1}' | tee /tmp2/grani.txt
