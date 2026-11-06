#!/bin/bash
#
# plugin for munin
# get statistics Russian MUDs. Part 2
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Old RMUD (rmud.org:3041)'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info MUDs statistics'
    echo 'rmud.label Old RMUD'
    exit 0
fi

cat /tmp2/rmudold.txt
echo
