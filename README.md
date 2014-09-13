docker-minecraft
================

Minecraft server (1.8) in a container. Nothing special ...

How to run
================

Make sure [docker][docker] is installed. To build the container clone the repository or create your own docker file based on this base [image][image].

     > docker build -t "YOUR-TAG" .

Start the container with the following command

     > docker run -d -p 25565:25565 -v /HOST-PATH:/minecraft/data YOUR-TAG 

[docker]: http://www.docker.io "docker"
[image]: https://registry.hub.docker.com/u/bertschneider/minecraft/