#!/bin/sh
nc -w 15 mud.a-mud.ru 4000 < amud.cmd | grep -a Всего | awk '{print "amud.value " $5-1}' | tee /tmp2/amud2.txt