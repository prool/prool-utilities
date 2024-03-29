#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD http://zerkalo.kharkov.org'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD players'
    echo 'zmud-players.label Zerkalo players'
    echo 'zmud-imms.label Zerkalo immortals'
    exit 0
fi

cat /var/www/zerkalo.kharkov.org/wholist.html | grep -a "�����" | awk '{print "zmud-players.value " $6}'
cat /var/www/zerkalo.kharkov.org/wholist.html | grep -a "�����" | awk '{print "zmud-imms.value " $4}'
