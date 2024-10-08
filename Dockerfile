# Usa una imagen base oficial de Ubuntu
FROM python:3.9
COPY index.html /usr/share/nginx/html/

# Actualiza el índice de paquetes e instala `curl`
RUN apt-get update && apt-get install -y nginx

# Establece el directorio de trabajo
WORKDIR /app

# Copia archivos desde el contexto de construcción al contenedor
COPY script.py .

# Expone un puerto en el contenedor
EXPOSE 80

# Define el comando que se ejecutará cuando se inicie el contenedor
CMD ["python", "script.py"]

