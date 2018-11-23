#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title VMUD2 (test shard) http://mud.kharkov.org'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of VMUD2 players'
    echo 'vmud-players.label VMUD2 players'
    echo 'vmud-players.draw AREASTACK'
    echo 'vmud-imms.label VMUD2 immortals'
    echo 'vmud-imms.draw AREASTACK'
    echo 'vmud-players.colour COLOUR0'
    echo 'vmud-imms.colour COLOUR17'
    exit 0
fi

cat /var/www/mud.kharkov.org/mudstat/vmud2.html | grep "Total:" | awk '{print "vmud-players.value " $5}'
cat /var/www/mud.kharkov.org/mudstat/vmud2.html | grep "Total:" | awk '{print "vmud-imms.value " $3}'
