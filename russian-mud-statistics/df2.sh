#!/bin/sh
# script for get online count from DF2
echo -n `date` " " >> /tmp2/mudstat.log2
prooltin scr.df2 |tee /tmp/df2.1.txt|grep -a "Total players"|tee /tmp/df2.2.txt|awk '{i=substr($3,8)-1; if (i<0) i=0; print "df2.value " i}'|tee /tmp2/df2.txt| tee -a /tmp2/mudstat.log2
