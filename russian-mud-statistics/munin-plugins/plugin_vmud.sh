#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Virtustan MUD http://mud.kharkov.org'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of VMUD players'
    echo 'vmud-players.label VMUD players'
    exit 0
fi

cat /var/www/mud.kharkov.org/mudstat/vmud.html | grep "Total:" | awk '{print "vmud-players.value " $5}'
