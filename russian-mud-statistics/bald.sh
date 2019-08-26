#!/bin/sh
# script for get online count from Balderdash
tt++ scr.bald | tee /tmp/bald.log | grep "Найдено" | awk '{i=0;i=$2;if (i>0) i=i-1;print "bald.value " i}' | tail -1 | tee /tmp2/balderdash.txt
