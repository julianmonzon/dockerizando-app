# Utiliza la imagen base de Python 3.9
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala git y clona el repositorio desde GitHub
RUN apt-get update && apt-get install -y git \
    && git clone https://github.com/julianmonzon/dockerizando-app.git .

# Ejecuta el script que desees
CMD ["python", "bienvenida.py"]
