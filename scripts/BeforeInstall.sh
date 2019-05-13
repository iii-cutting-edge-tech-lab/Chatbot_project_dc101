#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 204065533127 --region ap-northeast-1)

if [ `docker images | wc -l` > 1 ]
then
	docker image rm -f 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_db:latest
	docker image rm -f 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_flask:latest
	docker image rm -f 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_serveo:latest
else
	docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_db:latest
	docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_flask:latest
	docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_serveo:latest
fi
exit 0
