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
    echo 'graph_title Virtustan MUD. Stat by netcat'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info VMUD statistics'
    echo 'vmud.label VMUD'
    exit 0
fi

nc -w 5 mud.kharkov.org 3000 | grep -a Online | awk '{print "vmud.value " $2-1 }'
