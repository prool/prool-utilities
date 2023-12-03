#!/bin/bash
#
# plugin for munin
# get statistics from MUD
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Zerkalo 4002 MUD. Stat by netcat'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Zerkalo 4002 statistics'
    echo 'z4002.label Zerkalo'
    exit 0
fi

nc -w 5 mud.kharkov.org 4002 | grep -a Online | awk '{print "z4002.value " $2-1 }'
