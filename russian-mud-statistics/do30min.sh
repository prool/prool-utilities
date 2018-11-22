#/bin/sh
while true
do
date

./c7i.sh
./hiervard.sh

./grani.sh
# ./c7i.sh
./dream.sh
./aladon.sh
./amud.sh
./sow.sh
./neronis.sh
./adan.sh
./arda.sh
./witcher.sh
./rmud.sh
./df2.sh
./fdung.sh
./wrf.sh

# ./vmudtest.sh

./byl.sh
./byl5555.sh

./makewww.sh

./makepage.sh | sh

rm -f /tmp/prooltin.log > /dev/null

echo !------Sleep 30 min----------!
i=30
	while [ `expr $i` -ne 0 ]
	do
	sleep 60
	echo -n "*"
	i=`expr $i - 1`
	done
echo " "
done
