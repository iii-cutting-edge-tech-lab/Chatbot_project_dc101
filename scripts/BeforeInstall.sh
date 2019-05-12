#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 204065533127 --region ap-northeast-1)

docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_db:96bfea0
docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_flask:latest
docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/chatbot_serveo:96bfea0

exit 0
