#!/bin/bash
#
# plugin for munin
# get statistics Russian MUDs. Part 2
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Russian MUDs statistics. Part 2'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'bald.label Balderdash MUD'
#    echo 'bald.colour COLOUR7'
#    echo 'c7i.label C7I'
    echo 'king.label KingLion'
    echo 'hiervard.label Hiervard'
#    echo 'byl.label Byliny'
#    echo 'sow.label SOW'
#    echo 'df2.label DF2'
    echo 'adan.label Adamant Adan'
    echo 'arda.label Arda MUD'
    echo 'witcher.label Witcher MUD'
    echo 'rmud.label RMUD'
    echo 'neronis.label Neronis'
    echo 'amud.label AMUD'
    echo 'aladon.label Aladon'
    exit 0
fi

curl http://www.balderdash.ru/ 2>/dev/null | grep "64\." | awk '{print "bald.value " $2"0" }'
# curl http://live.c7i.ru/command.php?command=who 2>/dev/null | /usr/local/bin/filtr1
curl http://tlkrus.rusfur.net:8880/who 2>/dev/null | grep ÍÁËÓÉÍÕÍ | awk '{print "king.value " substr($1,8)+0}'
curl http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep Ñìåðòí | grep -v h5 | awk 'BEGIN {i=0} {i=$6+0} END {print "hiervard.value "i}'
#cat /tmp/byl-stat.txt
#cat /tmp/sowmud.txt
# cat /tmp/df2.txt
cat /tmp/adan.txt
cat /tmp/vmudtest-ok.txt
cat /tmp/arda.txt
cat /tmp/witcher.txt
cat /tmp/rmud.txt
cat /tmp/neronis.txt
cat /tmp/amud.txt
cat /tmp/aladon.txt
echo
