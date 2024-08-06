docker pull ubuntu
docker pull python:3.9

# Contenedor ubuntu en modo iterativo
docker run -it ubuntu bash

# Servidor web apache en segundo plano
docker run -d -p 8000:80 httpd