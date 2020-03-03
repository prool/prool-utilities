#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD rooms'
    echo 'graph_vlabel rooms'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD rooms'
    echo 'zmud-rooms.label Zerkalo rooms'
    exit 0
fi

cat /home/prool/MUD/lib/stat/who2.txt | grep -a "Rooms" | awk '{print "zmud-rooms.value " $2}'
