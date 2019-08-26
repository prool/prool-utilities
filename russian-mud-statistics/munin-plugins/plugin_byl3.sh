#!/bin/bash
#
# plugin for munin
# get statistics from russian MUDs
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Byliny MUD, experimental graph #2'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Byliny experimental #2'
    echo 'byl.label Byliny'
    exit 0
fi

#echo byl.value 0
LD_LIBRARY_PATH=/usr/local/bin /usr/local/bin/byliny-skript
