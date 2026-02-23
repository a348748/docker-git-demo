FROM python:3.11-slim

# Instala git para poder clonar por HTTPS
RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Clona el repositorio por HTTPS dentro de la imagen (requisito #4)
RUN git clone https://github.com/a348748/docker-git-demo.git repo

WORKDIR /app/repo

# Ejecuta la app en terminal
CMD ["python", "app.py"]
