#!/bin/bash
#
# plugin for munin
# get statistics Russian MUDs. Part 2
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title King Lion MUD'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'king.label KingLion'
    exit 0
fi

curl --connect-timeout 120 http://tlkrus.rusfur.net:8880/who 2>/dev/null | grep максимум | awk '{print "king.value " substr($1,8)+0}' | tee -a /tmp2/mudstat.log1
echo
