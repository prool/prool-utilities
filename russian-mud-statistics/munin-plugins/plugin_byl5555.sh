#!/bin/bash
#
# plugin for munin
# get statistics from russian MUDs
# script for get online count from Byliny, port 5555
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title ZZ) Bylins, test server, port 5555'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info bylins 5555'
    echo 'byl5555.label Bylins'
    echo 'byl5555.draw AREASTACK'
    exit 0
fi

cat /tmp2/byl5555-stat.txt
echo
