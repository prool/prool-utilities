#!/bin/sh
#
# MUNIN plugin for MUD statistics
# by prool
# <proolix@gmail.com>
# www.prool.kharkov.org    mud.kharkov.org
# GPL v.3
#

if [ "$1" = "config" ]; then
    echo 'graph_title New Zerkalo players'
    echo 'graph_vlabel players'
    echo 'graph_noscale true'
    echo 'graph_category MUD'
    echo 'graph_info This graph shows amount of MUD players'
    echo 'zmud-players.label Zerkalo players'
    echo 'zmud-imms.label Zerkalo immortals'
    exit 0
fi

# Samples of line:

# Всего : смертных 9. 
# Всего : бессмертных 1 смертных 9. 
# Всего : бессмертных 1.
# Никого  

# cat /var/www/newzerkalo/who.html | grep -a "Всего" | awk '{print "zmud-players.value " $6}'
# cat /var/www/newzerkalo/who.html | grep -a "Всего" | awk '{print "zmud-imms.value " $4}'
if grep "Никого" /var/www/newzerkalo/who.html > /dev/null
then
echo zmud-players.value 0 | tee /tmp2/newz.txt
echo zmud-imms.value 0
else
# LC_CTYPE=koi8-r
# echo Ktoto est
cat /var/www/newzerkalo/who.html | grep -a "Всего" | awk '{l=length($3); if (l==11) print "zmud-imms.value " $4 "\nzmud-players.value " $6; else print "zmud-players.value " $4 "\nzmud-imms.value 0"}' 2>/dev/null | tee /tmp2/newz.txt
fi

