#!/bin/bash

#sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

cd /home/ec2-user/deploy/code/
aws s3 cp s3://dc101-project02/secretFile.txt .

cd /home/ec2-user/deploy/
aws s3 cp s3://dc101-project02/mysql_data.tar .
sudo tar -xvf mysql_data.tar
sudo rm mysql_data.tar

exit 0
