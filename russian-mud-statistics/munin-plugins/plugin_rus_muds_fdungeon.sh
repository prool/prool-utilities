#!/bin/bash
#
# plugin for munin
# get statistics Russian MUDs
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Forgotten Dungeon MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info FDungeon'
    echo 'fdung.label Forgotten Dungeon'
    exit 0
fi

cat /tmp2/fdung.txt
echo
