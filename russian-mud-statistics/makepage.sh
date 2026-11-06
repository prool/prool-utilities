#/bin/sh
cp header2 /var/www/muds.kharkov.org/index.html
cat /tmp2/*.txt|grep -a -v Can|grep -a -v byl5555|sort -nrk 2|awk '{print "cat " $1 " >> /var/www/muds.kharkov.org/index.html"}'|sh
echo "<br><br>Page generated in  " >>  /var/www/muds.kharkov.org/index.html
date +%R%t%d%t%B%t%Y >>  /var/www/muds.kharkov.org/index.html
cat footer2 >> /var/www/muds.kharkov.org/index.html
