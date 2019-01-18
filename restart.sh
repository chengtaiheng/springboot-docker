#!/usr/bin/env bash
#停止原有容器
docker stop chth-springboot-docker 1>/dev/null 2>&1

#删除原有容器
docker rm   chth-springboot-docker 1>/dev/null 2>&1

#构建一个新容器
docker run \
	-i \
	-d \
	-t \
	-p 1667:1667 \
	--name chth-springboot-docker \
	-v /docker_project/springboot-docker/logs:/chth \
	chth/springboot-docker:1.0.0 /bin/bash
