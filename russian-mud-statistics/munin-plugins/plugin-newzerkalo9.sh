#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD real time uptime, days. v.0.3'
    echo 'graph_vlabel uptime'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows MUD uptime'
    echo 'zmud-uptime.label Zerkalo uptime'
    exit 0
fi

cat /tmp2/who2.lst | grep -a "uptime" | awk '{print "zmud-uptime.value " $4}'
