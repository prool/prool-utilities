#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title EmpireMUD players'
echo 'graph_vlabel players'
echo 'graph_noscale true'
echo 'graph_category empiremud'
echo 'graph_info EmpireMUD server players'
echo 'players.label Players'
#    echo 'objs.colour COLOUR7'
exit 0
fi

cat /tmp2/empiremud.lst | grep Players | awk '{print "players.value " $2}'
