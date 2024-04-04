#!/bin/bash

# Создание первой сети с именем tg_cluster_app_network
docker network create tg_cluster_app_network

# Создание второй сети с именем tg_cluster_kafka_network
docker network create tg_cluster_kafka_network

# Проверка созданных сетей
docker network ls
