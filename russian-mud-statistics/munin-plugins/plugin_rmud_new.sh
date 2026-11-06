#!/bin/bash
#
# plugin for munin
# get statistics for MUDs
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
	echo 'graph_title New RMUD (rmud.org:4000)'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info MUDs statistics'
    echo 'rmud.label New RMUD'
    exit 0
fi
curl --connect-timeout 60 -s https://rmud.org/api/v1/stats | awk '{i=0; i=0+substr($1,24); print "rmud.value " i }' | tee /tmp2/rmud.txt
