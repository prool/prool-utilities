#!/bin/sh
#
# MUNIN plugin for subscribe.ru statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title SUBSCRIBE.RU #2'
    echo 'graph_vlabel subscribers'
    echo 'graph_noscale true'
    echo 'graph_category subscribe.ru'
    echo 'graph_info This graph shows amount of SUBSCRIBE.RU subscribers'
    echo 'subscribers.label Ezheki'
    exit 0
fi

curl --connect-timeout 120 https://subscribe.ru/catalog/comp.soft.av.ezheki 2>/dev/null | grep Count | awk '{i=0+substr($4,29)*1000; print "subscribers.value " i}'
