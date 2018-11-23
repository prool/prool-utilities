#!/bin/sh
#
# MUNIN plugin #2 for MUD additional statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Zerkalo mobs'
    echo 'graph_vlabel digits'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows various MUD digits'
    echo 'mobs.label Zerkalo mobs'
    echo 'mobs.colour COLOUR7'
#    echo 'objs.label VMUD objs'
    exit 0
fi

cat /var/www/zerkalo.kharkov.org/who.html | grep "Total mobs" | awk '{print "mobs.value " $3}'
