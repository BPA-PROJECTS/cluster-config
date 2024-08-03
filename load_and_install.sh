#!/bin/bash

# Обновляет локальный репозиторий до последних изменений из удаленного репозитория.
git pull

echo "TG Cluster Config - Start"
echo ""
echo "Создание сетей"
echo ""

chmod +x ./common/create-networks.sh

echo "Перейти в директорию с docker-compose.yml"
echo ""
cd "./kafka" || exit

echo "Запуск docker-compose"
echo ""
docker-compose up -d

echo "TG Cluster Config - Finish"