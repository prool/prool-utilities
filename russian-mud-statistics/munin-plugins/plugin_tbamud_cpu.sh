#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title tbaMUD % cpu'
echo 'graph_vlabel %'
echo 'graph_noscale true'
echo 'graph_category tbamud'
echo 'graph_info tbaMUD server % cpu'
echo 'cpu.label % CPU'
#    echo 'objs.colour COLOUR7'
exit 0
fi

ps aux | grep "circle 8888" | grep -v grep | awk '{print "cpu.value " $3}'
