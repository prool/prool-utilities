#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD rooms, v.0.3'
    echo 'graph_vlabel rooms'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD rooms'
    echo 'zmud-rooms.label Zerkalo rooms'
    exit 0
fi

cat /tmp2/who2.lst | grep -a "Rooms" | awk '{print "zmud-rooms.value " $2}'
