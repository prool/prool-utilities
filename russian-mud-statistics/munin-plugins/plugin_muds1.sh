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
    echo 'graph_title Byliny and Sphere of Worlds'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'byl.label Byliny'
    echo 'sow.label SOW'
    exit 0
fi

cat /tmp2/byl-stat.txt
cat /tmp2/sowmud.txt
echo
