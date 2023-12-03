#!/bin/sh
#
# MUNIN plugin #3 for MUD additional statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Z) Prool MUD registered players v.0.2'
    echo 'graph_vlabel digits'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows various MUD digits'
    echo 'plrs1.label VMUD registered players'
    exit 0
fi

cat /tmp2/vmud.html | grep "Total registered" | awk '{print "plrs1.value " $4}'
