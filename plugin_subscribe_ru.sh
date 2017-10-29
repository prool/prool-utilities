#!/bin/sh
#
# MUNIN plugin for subscribe.ru statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title SUBSCRIBE.RU'
    echo 'graph_vlabel subscribers'
    echo 'graph_noscale true'
    echo 'graph_category subscribe.ru'
    echo 'graph_info This graph shows amount of SUBSCRIBE.RU subscribers'
    echo 'subscribers.label News of Prool'
    echo 's2.label Proold list'
    echo 's3.label Proolix list'
    echo 's4.label Inet Perfomans'
    echo 's5.label News of Virtustan'
    exit 0
fi

curl --connect-timeout 120 https://subscribe.ru/catalog/inet.thoughts.newsofprool 2>/dev/null | grep Count | awk '{i=0+substr($4,29); print "subscribers.value " i}'
curl --connect-timeout 120 https://subscribe.ru/catalog/inet.thoughts.proold/ 2>/dev/null | grep Count | awk '{print "s2.value " 0+substr($4,29)}'
curl --connect-timeout 120 https://subscribe.ru/catalog/comp.soft.othos.proolix/ 2>/dev/null | grep Count | awk '{i=0+substr($4,29); print "s3.value " i}'
curl --connect-timeout 120 https://subscribe.ru/catalog/lit.graph.perfomans 2>/dev/null | grep Count | awk '{i=0+substr($4,29); print "s4.value " i}'
curl --connect-timeout 120 https://subscribe.ru/stat/economics.news.virtustan 2>/dev/null | grep Count | awk '{i=0+substr($4,29); print "s5.value " i}'
