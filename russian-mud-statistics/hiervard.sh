#/bin/sh
curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep -a Смертн  | tail -1 | awk '{i=0; i=0+$6+0; print "hiervard.value " i}' | tee /tmp2/hiervard.txt
if test -s /tmp2/hiervard.txt
then
    echo -n
else
    echo hiervard.value 0 | tee /tmp2/hiervard.txt
fi
