#!/bin/sh
# script for get online count from Amud
tt++ scr.amud | tee /tmp/amud1.txt | grep "бессмертных" | tee /tmp/amud2.txt | awk '{print "amud.value " $5}' | tail -1 | tee /tmp/amud.txt
