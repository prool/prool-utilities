#!/bin/sh
#
# MUNIN plugin. MUD. memory
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
	    echo 'graph_title New Zerkalo MUD memory percents'
	        echo 'graph_vlabel percents'
		    echo 'graph_noscale true'
		        echo 'graph_category MUD'
			    echo 'graph_info MUD percents'
			        echo 'mem.label % memory'
				    echo 'cpu.label % CPU'
				    #    echo 'objs.colour COLOUR7'
				        exit 0
				fi

ps aux | grep bin/circle | grep -v "circle 4" | grep -v "circle 5" | grep -v grep | awk '{print "cpu.value " $3}'
ps aux | grep bin/circle | grep -v "circle 4" | grep -v "circle 5" | grep -v grep | awk '{print "mem.value " $4}'
