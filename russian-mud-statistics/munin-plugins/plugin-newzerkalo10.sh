#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo MUD uniq IP, v.0.3'
    echo 'graph_vlabel uniq_ip'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD uniq iq'
    echo 'zmud-ip.label Zerkalo uniq_ip'
    exit 0
fi

cat /tmp2/who2.lst | grep -a "host" | sort | uniq | wc | awk '{print "zmud-ip.value " $1}'
