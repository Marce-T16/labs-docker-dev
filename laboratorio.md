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