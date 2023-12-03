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
	echo 'graph_title Grani Mira MUD #2 (Prool)'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info MUDs statistics'
    echo 'grani.label Grani'
    exit 0
fi

cat /tmp2/grani2.txt
echo
