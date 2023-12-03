#!/bin/bash
#
# plugin for munin
# get statistics from MUDs
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
	echo 'graph_title Grani Mira MUD #2 in Prool server'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info MUDs statistics'
    echo 'players.label Players'
    exit 0
fi

# cat /tmp2/grani2.lst
cat /tmp2/mudstats.xml | grep players | awk '{i=0+substr($1,10); print "players.value " i}'
