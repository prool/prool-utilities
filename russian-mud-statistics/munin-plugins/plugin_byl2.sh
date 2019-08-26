#!/bin/bash
#
# plugin for munin
# get statistics from russian MUDs
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Byliny MUD, experimental graph'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Byliny experimantal'
    echo 'byl.label Byliny'
    exit 0
fi

echo byl.value 1
# telnet bylins.su 4000 2>/dev/null | grep Online | awk '{print "byl.value " $2}'
