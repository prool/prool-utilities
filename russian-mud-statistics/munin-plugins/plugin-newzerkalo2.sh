#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo players, by netcat utility'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD players'
    echo 'zmud-players.label Zerkalo players'
    exit 0
fi

nc -w 5 zerkalo.kharkov.org 4000 | grep Online | awk '{print "zmud-players.value " $2-1}' | tee /tmp2/newz.txt
