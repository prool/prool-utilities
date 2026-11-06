#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title tbaMUD proc time'
echo 'graph_vlabel s'
echo 'graph_noscale true'
echo 'graph_category tbamud'
echo 'graph_info tbaMUD proc time'
echo 'time.label proc time'
#    echo 'objs.colour COLOUR7'
exit 0
fi

ps aux | grep "circle 8888" | grep -v grep | awk '{i=0+$10; print "time.value " i}'
