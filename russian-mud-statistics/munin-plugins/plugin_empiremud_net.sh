#!/bin/bash
#
# plugin for munin
# get statistics MUD
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org mud.virtustan.net
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title EmpireMUD.net stat'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category empiremud'
    echo 'graph_info MUD statistics'
    echo 'mud.label EmpireMUD'
    exit 0
fi

#nc -w 15 mud.kharkov.org 5000 < /tmp2/iac-do-mssp.bin  | head -1 | awk '{i=substr($1,25,/NAME/); print "mud.value " i}' 2>/dev/null
## nc -w 5 empiremud.net 4000 < /tmp2/iac-do-mssp.bin | head -3 | tail -1 | awk '{i=0; i=0+substr($1,29,2); print "mud.value " i}' 2>/dev/null
nc -w 5 empiremud.net 4000 < /tmp2/iac-do-mssp.bin > /tmp2/empiremud.0
cat /tmp2/empiremud.0 | tail -1 | awk '{i=0; i=0+substr($2,33)+0; print "mud.value " i}' 2>/dev/null
