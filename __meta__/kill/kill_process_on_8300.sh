#!/bin/bash

# Порт, на котором работает процесс
PORT=8300

# Найти PID процесса, работающего на указанном порту, и убить его
PID=$(sudo lsof -t -i:$PORT)
if [ -z "$PID" ]; then
  echo "Нет процесса, работающего на порту $PORT"
else
  sudo kill $PID
  echo "Процесс на порту $PORT был завершен"
fi