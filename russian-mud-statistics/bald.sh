#!/bin/sh
# script for get online count from Balderdash
tt++ scr.bald | tee /tmp/bald.log | grep -a "Найдено" | awk '{i=0;i=$2;if (i=1) i=0;else i=i-1;print "bald.value " i}' | tail -1 | tee /tmp2/balderdash.txt
