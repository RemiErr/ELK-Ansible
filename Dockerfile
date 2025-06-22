# Dockerfile
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 更新系統、安裝必要套件
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    ansible \
    docker.io \
    git \
    curl \
    && pip install docker \
    && apt-get clean

# 安裝 docker-compose CLI
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose

WORKDIR /workspace
CMD [ "bash" ]
