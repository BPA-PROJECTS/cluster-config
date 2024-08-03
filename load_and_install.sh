#!/bin/bash

echo "TG Cluster Config - Start"
# Создание сетей
./common/create-networks.sh

# Перейти в директорию с docker-compose.yml
cd "./kafka" || exit

# Запуск docker-compose
docker-compose up -d

echo "TG Cluster Config - Finish"