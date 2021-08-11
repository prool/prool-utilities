#curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep Ñìåðòí | grep -v h5 | awk 'BEGIN {i=0} {i=$6+0} END {print "Хьервард "i}' >>  /var/www/muds.kharkov.org/newfile
#curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | tee hier.html | grep яЛЕПРМ | grep -v h5 | awk 'BEGIN {i=0} {i=$6+0} END {print "hiervard.value "i}'
curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | tee hier.html | grep ������
