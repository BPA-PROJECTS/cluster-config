#!/bin/bash

# Обновляем индекс пакетов apt
sudo apt-get update

# Устанавливаем пакеты, необходимые для использования репозитория через HTTPS
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Добавляем официальный GPG ключ Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Проверяем отпечаток ключа
sudo apt-key fingerprint 0EBFCD88

# Настраиваем стабильный репозиторий
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Обновляем индекс пакетов apt
sudo apt-get update

# Устанавливаем Docker CE
sudo apt-get install -y docker-ce

# Устанавливаем Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Применяем права на выполнение к бинарному файлу
sudo chmod +x /usr/local/bin/docker-compose

# Тестируем установку
docker --version
docker-compose --version