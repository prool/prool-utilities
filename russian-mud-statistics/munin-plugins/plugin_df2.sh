#!/bin/bash
#
# plugin for munin
# get statistics Russian MUDs. DF2
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Russian MUDs statistics. DF2'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics. DF2'
    echo 'df2.label DF2'
    exit 0
fi

cat /tmp2/df2.txt
echo
