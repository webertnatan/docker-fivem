FROM debian:bullseye-slim

# Instala ferramentas e bibliotecas necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    grep \
    tar \
    xz-utils \
    bash \
    coreutils \
    libstdc++6 \
    libgcc1 \
    gnupg \
    mono-complete \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /srv

# Baixa e extrai automaticamente o último build do FiveM
RUN set -eux; \
    url_base="https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/"; \
    latest_build=$(curl -s "${url_base}" | grep -oE '[0-9]+-[a-f0-9]+' | sort -V | tail -n1); \
    echo "Último build encontrado: ${latest_build}"; \
    curl -sSL "${url_base}${latest_build}/fx.tar.xz" | tar -xJ -C /srv

# Corrige o run.sh para rodar com 'sh'
RUN sed -i 's/bash/sh/g' /srv/run.sh

EXPOSE 30120/tcp
EXPOSE 30120/udp
EXPOSE 40120/udp

CMD ["./run.sh"]
