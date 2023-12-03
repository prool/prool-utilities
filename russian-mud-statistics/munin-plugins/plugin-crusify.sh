#!/bin/bash
#
# plugin for munin
# get statistics MUD
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Crusify stat by netcat'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Crusify MUD statistics'
    echo 'cr.label Crusify'
    exit 0
fi

nc -w 15 mud.kharkov.org 5000 < /tmp2/iac-do-mssp.bin  | head -1 | awk '{i=substr($1,25,/NAME/); print "cr.value " i}' 2>/dev/null
echo
