# Comandos do Console FiveM

> Gerado em 21/05/2025

## ✅ Comandos Básicos do Servidor

| Comando                          | Descrição |
|----------------------------------|----------|
| `status`                         | Mostra os jogadores conectados. |
| `start [nome_do_recurso]`        | Inicia um recurso. Ex: `start vrp` |
| `stop [nome_do_recurso]`         | Para um recurso. |
| `restart [nome_do_recurso]`      | Reinicia um recurso. |
| `ensure [nome_do_recurso]`       | Garante que o recurso esteja rodando (start se não estiver). |
| `refresh`                        | Recarrega a lista de recursos. |
| `clear`                          | Limpa o console. |
| `quit` ou `exit`                 | Encerra o servidor. |
| `say [mensagem]`                 | Envia uma mensagem global para todos no chat. |
| `txadmin`                        | Mostra comandos disponíveis do txAdmin. |
| `help`                           | Lista todos os comandos disponíveis no momento. |

---

## 🔐 Comandos Administrativos

| Comando | Descrição |
|--------|----------|
| `add_principal [steamID] group.admin` | Dá permissões de admin via Steam ID. |
| `add_ace group.admin command allow`   | Permite comandos para o grupo admin. |
| `add_ace resource.[nome] command.[comando] allow` | Dá permissão específica para um recurso executar um comando. |

---

## ⚙️ Comandos com Players

| Comando | Descrição |
|--------|----------|
| `kick [ID] [motivo]`        | Expulsa um jogador. Ex: `kick 2 Uso de cheat` |
| `ban [ID]`                  | (Depende do sistema de banimento como vMenu, EasyAdmin etc.) |
| `tp [ID]` ou `goto [ID]`    | Teleporta até o jogador (pode depender do recurso). |

---

## 📡 Comandos com RCON

Se você ativou o RCON, pode usar comandos remotamente:

```bash
rcon_password SENHA
rcon start vrp
rcon stop esx_policejob
```

---

## 📄 Observações

- Os comandos de recursos (`start`, `stop`, `ensure`) usam o **nome da pasta** do recurso.
- O comando `refresh` só recarrega os recursos no `resources/`, mas **não reinicia o servidor**.
- O `ensure` é o mais seguro para produção, pois evita erro se o recurso já estiver rodando.

---
