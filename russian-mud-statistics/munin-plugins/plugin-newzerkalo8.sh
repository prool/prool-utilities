#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD zones, v.0.3'
    echo 'graph_vlabel zones'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD zones'
    echo 'zmud-zones.label Zerkalo zones'
    exit 0
fi

cat /tmp2/who2.lst | grep -a "Zones" | awk '{print "zmud-zones.value " $2}'
