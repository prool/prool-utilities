#!/bin/sh
# script for get online count from SOW
tt++ scr.sow | tee /tmp/sow1.txt | grep "���� ���������" | tee /tmp/sow2.txt | ./filtr4 | tee /tmp2/sowmud.txt
