#!/bin/sh
#
# MUNIN plugin. MUD uptime
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
	    echo 'graph_title New Zerkalo MUD process uptime'
	        echo 'graph_vlabel minutes'
		    echo 'graph_noscale true'
		        echo 'graph_category MUD'
			    echo 'graph_info MUD uptime'
			        echo 'uptime.label uptime'
				        exit 0
				fi

ps aux | grep bin/circle | grep -v "circle 4" | grep -v grep | awk '{i=0+$10; print "uptime.value " i}'
