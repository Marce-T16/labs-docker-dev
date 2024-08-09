docker pull ubuntu
docker pull python:3.9

# Contenedor ubuntu en modo iterativo
docker run -it ubuntu bash

# Servidor web apache en segundo plano
docker run -d -p 8000:80 httpd

# Listar todos los contenedores
docker ps -a

# Eliminar contenedor por ID
docker rm 8cc300bcc955
docker rm [ID_CONTENEDOR]

# Eliminar todos los contenedores detenidos
docker container prune

# Crear una imagen docker
touch Dockerfile
docker build -t ubuntu:latest .


## Ejercicio 3: Crear un Dockerfile para instalar Nginx en Ubuntu

### Dockerfile

FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]

## Ejercicio 4: Construir y Ejecutar la Imagen de Nginx

### Construcción de la Imagen Docker

docker build -t my-nginx:latest .

 ### Ejercicio 5: Modificar el Dockerfile de Nginx para exponer el puerto 80
FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

docker build -t my-nginx:latest .

## Tema 2: Instrucciones comunes en Dockerfile

### Ejercicio 1: Copiar un archivo HTML local a una imagen de Nginx

FROM nginx:latest
COPY index.html /usr/share/nginx/html/
docker build -t my-custom-nginx:latest .

### Ejercicio 2: Usar WORKDIR y copiar un archivo
FROM ubuntu:latest
WORKDIR /app
COPY myfile.txt .

docker build -t my-ubuntu-app:latest .

### Ejercicio 3: Ejecutar un script Python al iniciar el contenedor

FROM python:3.9
WORKDIR /app
COPY script.py .
CMD ["python", "script.py"]

docker build -t my-python-app:latest .
