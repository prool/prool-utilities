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
    echo 'graph_title Russian MUDs statistics. Part 2'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info Russian MUDs statistics'
    echo 'bald.label Balderdash MUD'
#    echo 'king.label KingLion'
    echo 'hiervard.label Hiervard'
    echo 'adan.label Adamant Adan'
    echo 'arda.label Arda MUD'
    echo 'witcher.label Witcher MUD'
    echo 'rmud.label RMUD'
    echo 'neronis.label Neronis'
    echo 'amud.label AMUD'
    echo 'aladon.label Aladon'
    exit 0
fi

cat /tmp2/hiervard.txt
cat /tmp2/adan.txt
cat /tmp2/arda.txt
cat /tmp2/witcher.txt
cat /tmp2/rmud.txt
cat /tmp2/neronis.txt
cat /tmp2/amud2.txt
cat /tmp2/aladon.txt
cat /tmp2/balderdash.txt
echo
