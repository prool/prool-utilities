#/bin/sh
curl http://live.c7i.ru/command.php?command=who 2>/dev/null | /usr/local/bin/filtr1 | awk '{print "c7i.value " 0+$2 }' | tee /tmp2/c7i.txt
