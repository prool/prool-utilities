#!/bin/bash
#
# plugin for munin
# get statistics from russian MUDs, part 1
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Byliny MUD. Stat by netcat'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'byl.label Byliny'
    exit 0
fi

nc -w 5 bylins.su 4000 | grep Online | awk '{print "byl.value " $2}'
