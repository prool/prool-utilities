#!/bin/sh
#
# MUNIN plugin. MUD. memory
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Crusify MUD memory'
    echo 'graph_vlabel Kb'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info MUD memory'
    echo 'crus1r.label Real memory 1'
    echo 'crus1v.label Virtual memory 1'
    echo 'crus2r.label Real memory 2'
    echo 'crus2v.label Virtual memory 2'
#    echo 'objs.colour COLOUR7'
    exit 0
fi

ps aux | grep "crusify" | grep -v grep | head -1 | awk '{print "crus1v.value " $5}'
ps aux | grep "crusify" | grep -v grep | head -1 | awk '{print "crus1r.value " $6}'
ps aux | grep "crusify" | grep -v grep | tail -1 | awk '{print "crus2v.value " $5}'
ps aux | grep "crusify" | grep -v grep | tail -1 | awk '{print "crus2r.value " $6}'
