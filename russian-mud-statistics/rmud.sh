#!/bin/sh
# script for get online count from RMUD
## echo -n `date` " " >> /tmp2/mudstat.log2
prooltin scr.rmud | tee /tmp/rmudold_0.txt | grep -a "смертны" | tail -1 | awk '{i=0+substr($1,8);j=0+$4;if (j>i)i=j;if (i>0) i=i-1; print "rmud.value " i}' | tee /tmp2/rmudold.txt| tee -a /tmp2/mudstat.log2


## 11 nov 2023 было выключено, потому что рмуд как мне стало известно в состоянии закрытого бета-тестирования и разработки

## 21 авг 2024 включено на новом номере порта

## 22 oct 2024. old RMUD still in port rmud.org:3041, and new RMUD in port 4000
