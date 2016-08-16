#!/bin/sh
#
# MUNIN plugin for temperature
# by prool, for prool's notebook Lenovo G470 with Ubuntu Linux 15.10
# <proolix@gmail.com>
# www.prool.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title Temperature'
    echo 'graph_vlabel gradus C'
    echo 'graph_noscale true'
    echo 'graph_category PROOL'
    echo 'graph_info This graph shows temperature';
    echo 'physical.label physical temperature'
    echo 'core0.label core 0 temperature'
    echo 'core1.label core 1 temperature'
    echo 'hdd.label HDD temperature'
#    echo 'pogoda.draw AREASTACK'
    exit 0
fi

# date >> ~prool/pogoda-na-marse.log

sensors | grep "Physical id 0:" | awk '{print "physical.value " $4}'
sensors | grep "Core 0:" | awk '{print "core0.value " $3}'
sensors | grep "Core 1:" | awk '{print "core1.value " $3}'
sudo hddtemp /dev/sda | awk '{print "hdd.value " $4}'
