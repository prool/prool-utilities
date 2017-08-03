#!/bin/bash
#
# plugin for munin
# get statistics C7I MUD
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Russian MUD statistics. C7I MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUD statistics. C7i MUD'
#    echo 'c7i.colour COLOUR7'
    echo 'c7i.label C7I'
    exit 0
fi

curl --connect-timeout 120 http://live.c7i.ru/command.php?command=who 2>/dev/null | /usr/local/bin/filtr1
echo
