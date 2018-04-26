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
    echo 'graph_title Hierward MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'hiervard.label Hiervard'
    echo 'hiervard.draw AREA'
    exit 0
fi

curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep Смертн | grep -v h5 | awk 'BEGIN {i=0} {i=$6+0} END {print "hiervard.value "i}' | tee -a /tmp2/mudstat.log1
echo
