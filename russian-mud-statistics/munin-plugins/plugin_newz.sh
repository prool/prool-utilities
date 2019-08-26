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
    echo 'graph_title New Zerkalo'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info New Zerkalo'
    echo 'newz.label NewZerkalo'
    exit 0
fi

#echo byl.value 0
LD_LIBRARY_PATH=/usr/local/bin /usr/local/bin/newz-skript | tee /tmp2/newz.txt
