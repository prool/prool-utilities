#/bin/sh
curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep -a ������  | tail -1 | awk '{print "hiervard.value " $6}' | tee /tmp2/hiervard.txt
if test -s /tmp2/hiervard.txt
then
    echo 
else
    echo hiervard.value 0 | tee /tmp2/hiervard.txt
fi
