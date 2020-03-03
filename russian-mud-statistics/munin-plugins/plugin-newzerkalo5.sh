#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD obj'
    echo 'graph_vlabel obj'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD obj'
    echo 'zmud-obj.label Zerkalo obj'
    exit 0
fi

cat /home/prool/MUD/lib/stat/who2.txt | grep -a "Objs" | awk '{print "zmud-obj.value " $2}'
