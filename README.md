docker-minecraft
================

Minecraft server (1.8) in a container. Nothing special ...

How to run
================

Make sure [docker][docker] is installed. To build the container clone the repository or create your own docker file based on this base [image][image].

     > git clone https://github.com/bertschneider/docker-minecraft.git
     > cd docker-minecraft
     > docker build -t "YOUR-TAG" .

To enable persistent data for your minecraft world create a volume container.

     > docker run -v /minecraft/data --name minecraft-data busybox echo Minecraft Data-only Container

The container data is stored on the host file system. If you already have some minecraft data, copy it into the directory stated in the `inspect` command. You should backup this directory periodically.

     > docker inspect minecraft-data
     { ....
       "Volumes": {
        "/minecraft/data": "/var/lib/docker/vfs/dir/93b8321772396b9e911f89736ee52c8304f7957debb7738ec981ee7614d13a4e"
       },
     ... }
   
Finally start the container with the following command

License
================

Licensed under the [MIT License][MIT].

[mit]: http://opensource.org/licenses/MIT
[docker]: http://www.docker.io
[image]: https://registry.hub.docker.com/u/bertschneider/minecraft/