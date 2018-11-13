
#!/usr/bin/env bash
# 停止容器
docker stop chth-springboot-docker 1>/dev/null 2>&1

# 删除容器
docker rm   chth-springboot-docker 1>/dev/null 2>&1

