#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title EmpireMUD proc time'
echo 'graph_vlabel s'
echo 'graph_noscale true'
echo 'graph_category empiremud'
echo 'graph_info EmpireMUD proc time'
echo 'time.label proc time'
#    echo 'objs.colour COLOUR7'
exit 0
fi

ps aux | grep "empire 7000" | grep -v grep | awk '{i=0+$10; print "time.value " i}'
