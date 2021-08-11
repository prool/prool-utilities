#!/bin/sh
# nc -w 15 balderdash.ru 9000 < bald.cmd | grep -a Найдено | awk '{print "bald.value " $2-1}' | tee /tmp2/bald2.txt
#nc -w 15 195.62.52.160 9000 < bald.cmd | tee /tmp/bald.tmp | grep -a Найдено | awk '{print "bald.value " $2-1}' | tee /tmp2/bald2.txt
nc -w 15 balderdash.su 9000 < bald.cmd | tee /tmp2/bald0.tmp | grep -a Найдено | awk '{print "bald.value " $2-1}' | tee /tmp2/bald2.txt
