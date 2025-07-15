# 🚓 Projeto Docker FiveM

Este projeto tem como objetivo facilitar o deploy de um servidor [FiveM](https://fivem.net/) com Docker, incluindo serviços de Apache, MySQL, Nginx e CI com Drone CI. Ideal para servidores de roleplay ou ambientes de teste baseados em GTA V.

---

## 📁 Estrutura do Projeto

```
docker-fivem/
├── apache/             # Configuração do Apache (porta 8080)
├── backup/             # Backup do banco de dados (ex: .sql)
├── cfx-server/         # Binários e dados do FiveM
├── fxserver/           # Configs e recursos do servidor FiveM
├── nginx/              # Configurações do Nginx (reverse proxy, HTTPS)
├── .env                # Variáveis de ambiente
├── .drone.yml          # Pipeline CI para Drone
├── .gitignore
├── docker-compose.yml  # Orquestração dos containers
├── start.sh            # Script automatizado de build, restore e deploy
└── README.md           # Este arquivo
```

---

## ⚙️ Pré-requisitos

- Docker & Docker Compose
- Git
- Acesso root ou permissões Docker
- Chaves de acesso (API do GitHub, licença FiveM, etc.)

---

## 🔧 Variáveis `.env`

Exemplo:

```env
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=fivem
MYSQL_USER=fivemuser
MYSQL_PASSWORD=strongpassword
TIMEZONE=America/Sao_Paulo

steamKey=SUA_STEAM_KEY
licenseKey=SUA_LICENSE_KEY

DRONE_GITHUB_CLIENT_ID=seu_client_id
DRONE_GITHUB_CLIENT_SECRET=seu_client_secret
DRONE_RPC_SECRET=secreto
DRONE_SERVER_HOST=drone.seudominio.com
DRONE_SERVER_PROTO=https
DRONE_SERVER_PROXY_PATH=/drone
DRONE_COOKIE_SECRET=seu_cookie
DRONE_USER=admin
```

---

## 🚀 Como usar

### Inicializar o servidor

```bash
chmod +x start.sh
./start.sh
```

Esse script faz:

1. Build dos containers
2. Importação do dump SQL (`backup/sql/creawork.sql`)
3. Subida dos serviços (`mysql`, `apache`, `fivem`, `drone`, `runner`, `nginx`)
4. Exibe os logs ao final

### Comandos úteis

```bash
docker compose up -d         # Subir containers
docker compose down          # Derrubar containers
docker compose logs -f       # Ver logs em tempo real
docker compose build         # Rebuild das imagens
```

---

## 🧪 CI/CD com Drone

Este projeto inclui Drone CI:

- `/drone` como path base
- Runner configurado
- Montagem do repositório como `/repo`

Configure seus segredos no painel da Drone para evitar exposição de variáveis sensíveis.

---

## 🛠️ Scripts

- **start.sh**: automatiza todo o processo de deploy
- Inclui restauração automática do banco `creawork` com `INSERT IGNORE`

---

## 🧠 Dicas

- O diretório `fxserver/resources` deve conter seus scripts, mods e configs.
- Certifique-se de que o Nginx possui os certificados válidos em `/etc/letsencrypt`.

---

## 🤝 Contribuindo

1. Fork o repositório
2. Crie uma branch: `git checkout -b minha-feature`
3. Commit: `git commit -m "feat: minha feature"`
4. Push: `git push origin minha-feature`
5. Abra um Pull Request

---

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

## 📬 Contato

- GitHub: [@webertnatan](https://github.com/webertnatan)
- Email: seu-email@example.com

**Feito com 💙 para a comunidade FiveM**