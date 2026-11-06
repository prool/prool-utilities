#/bin/sh
while true
do
date
# echo netcat values 
### ./grani2.sh
./df2.sh
./amud-nc.sh
./bald-nc.sh
# echo ---
./hiervard.sh
./shadow_realms.sh
#./bald.sh
./c7i.sh

./grani.sh
#./dream.sh
### ./aladon.sh # kod ne prihodit. /prool 6 oct 2025
# ./amud.sh
./sow.sh
./neronis.sh
./adan.sh
######### ./arda.sh
./witcher.sh
./rmud.sh
./fdung.sh
./wrf.sh

# ./vmudtest.sh

./byl.sh
./byl5555.sh

./makewww.sh

# cat /tmp2/vmud.html | grep "Total:" | awk '{print "vmud.value " $5}' > /tmp2/vmud.txt

./makepage.sh

# ./makelogs.sh

rm -f /tmp/prooltin.log > /dev/null
rm -f prooltin.log > /dev/null

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
