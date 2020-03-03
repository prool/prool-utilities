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
    echo 'graph_title DreamLand MUD. stat v.0.2'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'dream.label DreamLand'
    exit 0
fi
echo "dream.value " `curl -s https://dreamland.rocks/api/who | jq '.total'` | tee /tmp2/dream.txt
