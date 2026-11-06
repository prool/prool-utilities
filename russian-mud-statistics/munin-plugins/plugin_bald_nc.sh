#!/bin/bash
#
# plugin for munin
# get statistics MUDs
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Balderdash MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Balderdash MUD statistics'
    echo 'bald.label Balderdash MUD'
    exit 0
fi

cat /tmp2/bald2.txt
#cat /tmp2/balderdash.txt
echo
