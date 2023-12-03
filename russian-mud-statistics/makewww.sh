#/bin/sh
echo Make web page for blind
cp header.html /var/www/muds.kharkov.org/newfile
date +%R%t%d%t%B%t%Y >>  /var/www/muds.kharkov.org/newfile
echo "<br><br>" >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/byl-stat.txt | awk '{print "Былины " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/sowmud.txt | awk '{print "Сфера Миров " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/bald2.txt | awk '{i=0; i=0+$2; print "Балдердаш " i "<br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/hiervard.txt | awk '{print "Хьервард " $2 "<br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/arda.txt| awk '{print "Арда " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/witcher.txt| awk '{print "Ведьмак " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/rmud.txt| awk '{print "Рмад Мир Трех Лун " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/neronis.txt | awk '{print "Неронис " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/adan.txt | awk '{print "Адамант Адан " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/amud2.txt | awk '{print "Адамант мад Мир Колец " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/aladon.txt | awk '{print "Аладон " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile
cat /tmp2/c7i.txt | awk '{print "Берег Семи Воплощений " $2 "<br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/df2.txt | awk '{print "Опасная фантазия " $2 "<br>"}' >>  /var/www/muds.kharkov.org/newfile


if [ -s /tmp2/fdung.txt ]
then cat /tmp2/fdung.txt | awk '{print "Forgotten Dungeon " $2 "<br>"}' >> /var/www/muds.kharkov.org/newfile
else echo "Forgotten Dungeon не работает <br>" >> /var/www/muds.kharkov.org/newfile
fi

cat /tmp2/wrf.txt | awk '{print "World of Russian Fantasy " $2 "<br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/grani.txt | awk '{print "Грани Мира " $2 " <br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/dream.txt | awk '{print "DreamLand " $2 " <br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/sr.txt | awk '{print "Shadow Realms " $2 " <br>"}' >> /var/www/muds.kharkov.org/newfile
cat /tmp2/newz.txt | grep players | awk '{i=0; i=i+$2; print "Зеркало " i " <br>"}' >> /var/www/muds.kharkov.org/newfile

cat /tmp2/wholist.html | grep "Total:" | awk '{print "Виртустан мад " $5 " <br>"}' >>  /var/www/muds.kharkov.org/newfile
cat footer.html >>  /var/www/muds.kharkov.org/newfile
cp /var/www/muds.kharkov.org/newfile /var/www/muds.kharkov.org/stat-b.html
