#!/bin/bash
#
# plugin for munin
# get statistics C7I MUD v.2 (bot)
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title C7I MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info C7i MUD'
#    echo 'c7i.colour COLOUR7'
    echo 'c7i.label C7I'
    exit 0
fi

# date >> /tmp2/c7i.log

cat /tmp2/c7i.txt
echo
