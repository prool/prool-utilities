#!/bin/sh
#
# MUNIN plugin. MUD
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
	    echo 'graph_title New Zerkalo MUD registered players, v.0.2'
	        echo 'graph_vlabel players'
		    echo 'graph_noscale true'
		        echo 'graph_category MUD'
			    echo 'graph_info MUD players'
			        echo 'players.label players'
				        exit 0
				fi


cat /tmp2/players.lst | wc | awk '{print "players.value " $1}'
