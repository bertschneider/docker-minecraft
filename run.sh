#/bin/sh

docker run -d -p 25565:25565 -v ~/minecraft-data:/minecraft/data bertschneider/minecraft:0.1.0
