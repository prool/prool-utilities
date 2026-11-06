#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title EmpireMUD mobs'
echo 'graph_vlabel mobs'
echo 'graph_noscale true'
echo 'graph_category empiremud'
echo 'graph_info EmpireMUD server mobs'
echo 'mobs.label Mobs'
#    echo 'objs.colour COLOUR7'
exit 0
fi

cat /tmp2/empiremud.lst | grep Mobs | awk '{print "mobs.value " $2}'
