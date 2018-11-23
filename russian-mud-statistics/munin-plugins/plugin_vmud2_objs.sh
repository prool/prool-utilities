#!/bin/sh
#
# MUNIN plugin #3 for MUD additional statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title VMUD2 objs'
    echo 'graph_vlabel digits'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows various MUD digits'
    echo 'objs.label VMUD2 objs'
    exit 0
fi

cat /var/www/mud.kharkov.org/mudstat/vmud2.html | grep "Total objects" | awk '{print "objs.value " $3}'
