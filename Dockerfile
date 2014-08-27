# Another Minecraft Dockerfile

FROM dockerfile/java

MAINTAINER Norbert Schneider  <mail@herr-norbert.de>

RUN mkdir /minecraft
RUN wget -O /minecraft/minecraft.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/minecraft_server.1.7.10.jar
RUN chmod +x /minecraft/minecraft.jar

COPY ./config /minecraft/
COPY ./world /minecraft/CSM/

WORKDIR /minecraft
EXPOSE 25565

CMD java -Xmx768M -Xms768M -jar minecraft.jar nogui