#/bin/sh
while true
do
date

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
