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
    echo 'graph_title Balderdash MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'bald.label Balderdash MUD'
    exit 0
fi

curl --connect-timeout 120 http://www.balderdash.ru/ 2>/dev/null | grep "64\." | awk '{print "bald.value " $2"0" }' | tee -a /tmp2/mudstat.log1
echo
