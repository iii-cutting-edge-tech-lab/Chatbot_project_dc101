#!/bin/bash
if [ `docker ps | wc -l` > 1 ]
then
	cd /home/ec2-user/deploy
	docker-compose down --rmi all
fi

exit 0
