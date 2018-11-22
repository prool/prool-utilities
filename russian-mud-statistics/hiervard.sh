#/bin/sh
curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep Смертн | grep -v h5 | awk 'BEGIN {i=0} {i=$6+0} END {print "hiervard.value " i}' | tee /tmp2/hiervard.txt
