#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD protoobj'
    echo 'graph_vlabel protoobj'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD protoobj'
    echo 'zmud-protoobj.label Zerkalo protoobj'
    exit 0
fi

cat /home/prool/MUD/lib/stat/who2.txt | grep -a "protoobjs" | awk '{print "zmud-protoobj.value " $2}'
