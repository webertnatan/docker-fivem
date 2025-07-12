# 🚓 Projeto Docker FiveM

Este projeto tem como objetivo configurar e executar um servidor [FiveM](https://fivem.net/) em um ambiente Docker. Ele foi desenvolvido para facilitar o deploy local e remoto de servidores de roleplay ou testes baseados na plataforma GTA V.

## 📦 Requisitos

Antes de começar, você precisará ter instalado:

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- Acesso SSH (se for clonar a partir de uma VPS)

## 🗂️ Estrutura do Projeto

```bash
docker-fivem/
├── fxserver/                  # Arquivos do servidor FiveM (recursos, configs etc.)
├── apache/                    # Configuração opcional de servidor web (Apache)
├── mysql/                     # Banco de dados usado pelo servidor (por exemplo, para usuários)
├── scripts/                   # Scripts de automação (backup, deploy, etc.)
├── logs/                      # Logs da aplicação
├── .env                       # Arquivo de variáveis de ambiente
├── .gitignore                 # Arquivos/pastas ignorados pelo Git
├── docker-compose.yml         # Orquestração dos serviços Docker
└── README.md                  # Documentação do projeto
```

## ⚙️ Configuração de ambiente (`.env`)

Crie um arquivo `.env` na raiz do projeto com as seguintes variáveis (exemplo):

```env
FXSERVER_PORT=30120
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=fivem
MYSQL_USER=fivemuser
MYSQL_PASSWORD=strongpassword
```

## 🚀 Comandos Docker

### Subir os containers

```bash
docker compose up -d
```

### Parar os containers

```bash
docker compose down
```

### Ver logs do servidor

```bash
docker compose logs -f
```

## 🧪 Uso do Git

### 1. Clonar o repositório

```bash
git clone git@github.com:webertnatan/docker-fivem.git
cd docker-fivem
```

### 2. Adicionar e commitar alterações

```bash
git add .
git commit -m "Descrição do que foi feito"
```

### 3. Enviar alterações (push)

```bash
git push origin master
```

Se for o primeiro push:

```bash
git push --set-upstream origin master
```

### 4. Atualizar repositório local (pull)

```bash
git pull
```

## ✍️ Contribuindo

Contribuições são bem-vindas!

1. Faça um fork do projeto
2. Crie uma branch: `git checkout -b minha-feature`
3. Faça commit das suas mudanças: `git commit -m 'feat: nova funcionalidade'`
4. Faça push para a branch: `git push origin minha-feature`
5. Abra um Pull Request

## 🛡️ Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 🤝 Contato

Para dúvidas ou suporte:

- GitHub: [@webertnatan](https://github.com/webertnatan)
- Email: seu-email@example.com

**Feito com 💙 para a comunidade FiveM**
