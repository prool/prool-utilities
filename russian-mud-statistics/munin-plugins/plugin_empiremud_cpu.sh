#!/bin/sh
#
# MUNIN plugin
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
echo 'graph_title EmpireMUD % cpu'
echo 'graph_vlabel %'
echo 'graph_noscale true'
echo 'graph_category empiremud'
echo 'graph_info EmpireMUD server % cpu'
echo 'cpu.label % CPU'
#    echo 'objs.colour COLOUR7'
exit 0
fi

ps aux | grep "empire 7000" | grep -v grep | awk '{print "cpu.value " $3}'
