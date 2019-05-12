if [ `docker ps | wc -l` = 3 ]
then
	exit 0
else
	exit 1
fi
