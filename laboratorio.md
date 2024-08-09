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

[+] Building 1.6s (9/9) FINISHED              docker:default
 => [internal] load build definition from Dockerfile    0.1s
 => => transferring dockerfile: 480B                    0.0s
 => [internal] load metadata for docker.io/library/ubu  0.0s
 => [internal] load .dockerignore                       0.0s
 => => transferring context: 2B                         0.0s
 => [1/4] FROM docker.io/library/ubuntu:latest          0.0s
 => [internal] load build context                       0.1s
 => => transferring context: 10.26kB                    0.0s
 => CACHED [2/4] RUN apt-get update && apt-get install  0.0s
 => CACHED [3/4] WORKDIR /app                           0.0s
 => [4/4] COPY . /app                                   0.2s
 => exporting to image                                  0.8s
 => => exporting layers                                 0.7s
 => => writing image sha256:d5c3f9768d59d786d9bdba72af  0.0s
 => => naming to docker.io/library/my-nginx:latest      0.0s

 ### Ejercicio 5: Modificar el Dockerfile de Nginx para exponer el puerto 80
FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

docker build -t my-nginx:latest .
