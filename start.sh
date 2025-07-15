#!/bin/bash

set -e

# === Variáveis ===
SQL_DUMP="/root/docker-fivem/backup/sql/creawork.sql"
DB_NAME="creawork"
MYSQL_USER="root"
MYSQL_PASS="root"

# === Cores ===
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sem cor

# === Funções ===
info() {
  echo -e "${YELLOW}🔧 $1${NC}"
}

success() {
  echo -e "${GREEN}✅ $1${NC}"
}

# === Execução ===
info "Parando e removendo containers antigos..."
docker compose down apache fivem mysql || true

info "Construindo imagens Docker..."
docker compose build

info "Subindo container MySQL..."
docker compose up -d mysql

info "Aguardando MySQL iniciar..."
sleep 5

if [ ! -f "$SQL_DUMP" ]; then
  echo "❌ Arquivo SQL não encontrado: $SQL_DUMP"
  exit 1
fi

info "Modificando dump SQL para ignorar duplicados..."
sed -i 's/INSERT INTO/INSERT IGNORE INTO/g' "$SQL_DUMP"

info "Copiando dump SQL para dentro do container MySQL..."
docker cp "$SQL_DUMP" mysql:/creawork.sql

info "Criando banco de dados '$DB_NAME' (se necessário)..."
docker exec -i mysql mysql -u "$MYSQL_USER" -p"$MYSQL_PASS" \
  -e "CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

info "Restaurando banco de dados '$DB_NAME'..."
docker exec -i mysql mysql -u "$MYSQL_USER" -p"$MYSQL_PASS" "$DB_NAME" < "$SQL_DUMP"

info "Subindo containers: Apache, FiveM, Drone, Runner e Nginx..."
docker compose up -d apache fivem drone runner nginx

info "Exibindo últimos logs (sem travar o CI)..."
docker compose logs --tail=50

success "Deploy concluído com sucesso!"
