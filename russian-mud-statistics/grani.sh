#!/bin/sh
tt++ scr.grani | grep "������ � ����" | awk '{i1=0+$5; i2=0+$7; print "grani.value "i1+i2}' | tee /tmp2/grani.txt
