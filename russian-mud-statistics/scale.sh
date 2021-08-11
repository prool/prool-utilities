#/bin/sh
while true
do
date

echo !----------------------------!
i=30
	while [ `expr $i` -ne 0 ]
	do
	echo -n "*"
	i=`expr $i - 1`
	sleep 1
	done
echo " "
done
