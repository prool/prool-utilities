#!/bin/sh
#
# MUNIN plugin. Minetest memory
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title tbaMUD memory'
echo 'graph_vlabel Kb'
echo 'graph_noscale true'
echo 'graph_category tbamud'
echo 'graph_info tbaMUD server memory'
echo 'rmem.label Real memory'
echo 'vmem.label Virtual memory'
#    echo 'objs.colour COLOUR7'
exit 0
fi

ps aux | grep "circle 8888" | grep -v grep | awk '{print "vmem.value " $5}'
ps aux | grep "circle 8888" | grep -v grep | awk '{print "rmem.value " $6}'
