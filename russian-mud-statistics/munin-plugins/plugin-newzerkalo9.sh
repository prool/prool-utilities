#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD real time uptime, days'
    echo 'graph_vlabel uptime'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows MUD uptime'
    echo 'zmud-uptime.label Zerkalo uptime'
    exit 0
fi

cat /home/prool/MUD/lib/stat/who2.txt | grep -a "uptime" | awk '{print "zmud-uptime.value " $4}'
