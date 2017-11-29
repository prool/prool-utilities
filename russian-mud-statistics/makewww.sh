#/bin/sh
echo Make web page for blind
cp header.html /var/www/muds.kharkov.org/newfile
date +%R%t%d%t%B%t%Y >>  /var/www/muds.kharkov.org/newfile
echo "<br>" >>  /var/www/muds.kharkov.org/newfile
echo "<br>" >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/byl-stat.txt | awk '{print "Былины " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/sowmud.txt | awk '{print "Сфера Миров " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
curl --connect-timeout 120 http://www.balderdash.ru/ 2>/dev/null | grep "64\." | awk '{i=0; i=0+$2; print "Балдердаш " i }' | tee -a  /var/www/muds.kharkov.org/newfile
echo "<br>" >>  /var/www/muds.kharkov.org/newfile
curl --connect-timeout 120 http://tlkrus.rusfur.net:8880/who 2>/dev/null | grep ÍÁËÓÉÍÕÍ | awk '{print "Король Лев " substr($1,8)+0}' | tee -a  /var/www/muds.kharkov.org/newfile
echo "<br>" >>  /var/www/muds.kharkov.org/newfile
curl --connect-timeout 120 http://hiervard.ru/info/stat/online.shtml 2>/dev/null | grep ������ | grep -v h5 | awk 'BEGIN {i=0} {i=$6+0} END {print "Хьервард "i}' | tee -a /var/www/muds.kharkov.org/newfile
echo "<br>" >>  /var/www/muds.kharkov.org/newfile

cat /tmp2/arda.txt| awk '{print "Арда " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/witcher.txt| awk '{print "Ведьмак " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/rmud.txt| awk '{print "Рмад Мир Трех Лун " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/neronis.txt | awk '{print "Неронис " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/adan.txt | awk '{print "Адамант Адан " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/amud.txt | awk '{print "Адамант мад Мир Колец " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/aladon.txt | awk '{print "Аладон " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
curl http://live.c7i.ru/command.php?command=who 2>/dev/null | /usr/local/bin/filtr1 | awk '{print "Берег Семи Воплощений " 0+$2 }' | tee -a  /var/www/muds.kharkov.org/newfile
cat /tmp2/df2.txt | awk '{print "<br>Опасная фантазия " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat footer.html >>  /var/www/muds.kharkov.org/newfile
cp /var/www/muds.kharkov.org/newfile /var/www/muds.kharkov.org/stat-b.html
