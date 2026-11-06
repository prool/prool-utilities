#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
	echo 'graph_title Virtustan MUD (VMUD) players'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD players'
    echo 'vmud-players.label VMUD players'
    exit 0
fi

cat /tmp2/proolstat.lst | grep players | awk '{print "vmud-players.value " $2}'
cat /tmp2/proolstat.lst | grep players | awk '{print "vmud.value " $2}' > /tmp2/vmud.txt
