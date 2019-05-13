#!/bin/bash


sudo yum update -y
sudo yum install -y awslogs
sudo sed -i 's/us-east-1/ap-northeast-1/g' /etc/awslogs/awscli.conf
sudo sed -i 's/\/var\/log\/messages/user.log/g' /etc/awslogs/awslogs.conf
sudo sed -i 's/file = user.log/file = \/home\/ec2-user\/deploy\/code\/logs\/*.log/g' /etc/awslogs/awslogs.conf
sudo sed -i 's/log_group_name = user.log/log_group_name = \/project2_user-dialog/g' /etc/awslogs/awslogs.conf
sudo service awslogs restart


cd /home/ec2-user/deploy/code/
aws s3 cp s3://dc101-project02/secretFile.txt .

cd /home/ec2-user/deploy/
aws s3 cp s3://dc101-project02/mysql_data.tar .
sudo tar -xvf mysql_data.tar
sudo rm mysql_data.tar

exit 0
