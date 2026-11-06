#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title tbaMUD/prool players'
echo 'graph_vlabel players'
echo 'graph_noscale true'
echo 'graph_category tbamud'
echo 'graph_info tbaMUD/prool server players'
echo 'players.label Players'
#    echo 'objs.colour COLOUR7'
exit 0
fi

cat /tmp2/tbamud.lst | grep Players | awk '{print "players.value " $2}'
