#!/bin/sh
#
# MUNIN plugin #3 for MUD additional statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Z) Prool MUD registered players'
    echo 'graph_vlabel digits'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows various MUD digits'
    echo 'plrs1.label VMUD registered players'
    echo 'plrs2.label Zerkalo registered players'
    echo 'plrs1.colour COLOUR0'
    echo 'plrs2.colour COLOUR7'
    exit 0
fi

cat /var/www/mud.kharkov.org/mudstat/vmud.html | grep "Total registered" | awk '{print "plrs1.value " $4}'
cat /var/www/zerkalo.kharkov.org/who.html | grep "Total registered" | awk '{print "plrs2.value " $4}'
