#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD zones'
    echo 'graph_vlabel zones'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD zones'
    echo 'zmud-zones.label Zerkalo zones'
    exit 0
fi

cat /home/prool/MUD/lib/stat/who2.txt | grep -a "Zones" | awk '{print "zmud-zones.value " $2}'
