#!/bin/sh
nc -w 15 balderdash.ru 9000 < bald.cmd | grep -a Найдено | awk '{print "bald.value " $2-1}' | tee /tmp2/bald2.txt