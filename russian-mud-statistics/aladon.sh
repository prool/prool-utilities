#!/bin/sh
# script for get online count from Aladon MUD
# tt++ scr.aladon | grep "��������" | awk '{i=$7-1; if (i<0) i=0;print "adan.value " i}' | tee /tmp/adan.txt
tt++ scr.aladon | tee /tmp/aladon1.txt | grep "����� ����������" | tee /tmp/aladon2.txt | awk '{i=0; i=0+$3; i=i-1; print "aladon.value " i}' | tee /tmp/aladon.txt