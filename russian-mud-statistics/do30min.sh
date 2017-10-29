#/bin/sh
while true
do
date

./aladon.sh
./amud.sh
./sow.sh
./neronis.sh
./adan.sh
./arda.sh
./witcher.sh
./rmud.sh
./df2.sh

# ./vmudtest.sh

./byl.sh
./byl5555.sh

./makewww.sh

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
