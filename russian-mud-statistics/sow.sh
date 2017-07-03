#!/bin/sh
# script for get online count from SOW
echo -n `date` " " >> /tmp2/mudstat.log2
tt++ scr.sow | tee /tmp/sow1.txt | grep "игре находится" | tee /tmp/sow2.txt | ./filtr4 | tee /tmp2/sowmud.txt| tee -a /tmp2/mudstat.log2
