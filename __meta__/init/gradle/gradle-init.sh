#!/bin/bash

# Скачиваем Gradle 8.5
sudo wget https://services.gradle.org/distributions/gradle-8.5-bin.zip -P /tmp

# Распаковываем загруженный файл
sudo unzip -d /opt/gradle /tmp/gradle-8.5-bin.zip

# Устанавливаем переменные окружения для Gradle
sudo tee -a /etc/profile.d/gradle.sh <<EOF
export GRADLE_HOME=/opt/gradle/gradle-8.5
export PATH=\$PATH:\$GRADLE_HOME/bin
EOF

# Применяем изменения к текущей сессии
source /etc/profile.d/gradle.sh

# Тестируем установку
gradle -v
