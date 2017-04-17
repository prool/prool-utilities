#!/bin/sh
# script for get online count from DF2
tt++ scr.df2 |tee -a /tmp/df2.1.txt|grep "Всего игроков"|tee -a /tmp/df2.2.txt|awk '{i=substr($3,8)-1; print "df2.value " i}'|tee /tmp/df2.txt