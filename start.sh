#!/bin/bash

set -e

echo "Parando e removendo containers antigos (se existirem)..."
docker compose down apache fivem mysql

echo "Construindo imagens Docker (se aplicável)..."
docker compose build

echo "Subindo container MySQL..."
docker compose up -d mysql

echo "Aguardando MySQL iniciar (5 segundos)..."
sleep 5

echo "Modificando dump para ignorar duplicados..."
sed -i 's/INSERT INTO/INSERT IGNORE INTO/g' //root/docker-fivem/backup/sql/creawork.sql

echo "Copiando arquivo SQL para dentro do container MySQL..."
docker cp /root/docker-fivem/backup/sql/creawork.sql mysql:/creawork.sql

echo "Criando banco de dados creawork (se não existir)..."
docker exec -i mysql mysql -u root -proot -e "CREATE DATABASE IF NOT EXISTS creawork CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

echo "Restaurando banco de dados creawork (ignorando duplicados)..."
docker exec -i mysql mysql -u root -proot creawork < /root/docker-fivem/backup/sql/creawork.sql

echo "Subindo Apache e FiveM..."
docker compose up -d apache fivem drone runner nginx 

echo "Tudo subido. Monitorando logs do FiveM (Ctrl+C para sair)..."
docker compose logs -f

echo "✅ Deploy concluído!"