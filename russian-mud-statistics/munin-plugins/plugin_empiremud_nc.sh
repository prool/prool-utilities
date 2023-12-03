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
    echo 'graph_title EmpireMUD stat by netcat'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info MUD statistics'
    echo 'mud.label EmpireMUD'
    exit 0
fi

#nc -w 5 mud.kharkov.org 8888 < /tmp2/iac-do-mssp.bin | head -3 | tail -1 | awk '{i=0; i=0+substr($1,29,2); print "mud.value " i}' 2>/dev/null
nc -w 5 mud.kharkov.org 7000 < /tmp2/iac-do-mssp.bin | grep -a PLAYERS | awk '{i=0; i=0+substr($5,31); print "mud.value " i}' 2>/dev/null
