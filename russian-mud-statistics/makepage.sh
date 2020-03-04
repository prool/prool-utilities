#/bin/sh
cp header2 /var/www/muds.kharkov.org/index.html
cat /tmp2/*.txt|grep -v Can|grep -v byl5555|sort -nrk 2|awk '{print "cat " $1 " >> /var/www/muds.kharkov.org/index.html"}'|sh
cat footer2 >> /var/www/muds.kharkov.org/index.html
