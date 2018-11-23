#!/bin/sh
#
# MUNIN plugin #2 for MUD additional statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Zerkalo objs'
    echo 'graph_vlabel digits'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows various MUD digits'
    echo 'objs.label Zerkalo objs'
    echo 'objs.colour COLOUR7'
#    echo 'objs.label VMUD objs'
    exit 0
fi

cat /var/www/zerkalo.kharkov.org/who.html | grep "Total objects" | awk '{print "objs.value " $3}'
