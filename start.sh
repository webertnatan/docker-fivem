#!/bin/bash

echo "Subindo container MySQL..."
docker compose up -d mysql

echo "Aguardando MySQL iniciar (5 segundos)..."
sleep 5

echo "Copiando arquivo SQL para dentro do container MySQL..."
docker cp backup/sql/creawork.sql mysql:/creawork.sql

echo "Restaurando banco de dados creawork..."
docker exec -i mysql mysql -u root -proot -e "CREATE DATABASE IF NOT EXISTS creawork CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
docker exec -i mysql mysql -u root -proot creawork < backup/sql/creawork.sql

echo "Subindo Apache e FiveM..."
docker compose up -d apache fivem

echo "Tudo subido. Monitorando logs do FiveM (Ctrl+C para sair)..."
docker logs -f fivem
