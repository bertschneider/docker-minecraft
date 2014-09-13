# Another Minecraft Dockerfile

FROM dockerfile/java

MAINTAINER Norbert Schneider  <mail@herr-norbert.de>

RUN mkdir /minecraft
RUN mkdir /minecraft/data
RUN wget -O /minecraft/minecraft.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar
RUN chmod +x /minecraft/minecraft.jar

WORKDIR /minecraft/data
EXPOSE 25565

CMD java -Xmx768M -Xms768M -jar ../minecraft.jar nogui