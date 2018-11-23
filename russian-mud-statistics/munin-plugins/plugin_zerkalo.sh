#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Zerkalo MUD http://zerkalo.kharkov.org'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of ZerkaloMUD players'
    echo 'zerkalo-players.label Zerkalo MUD players'
    echo 'zerkalo-players.draw AREASTACK'
    exit 0
fi

cat /var/www/zerkalo.kharkov.org/who.html | grep "Total online:" | awk '{print "zerkalo-players.value " $6}'
