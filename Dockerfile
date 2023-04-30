FROM openjdk:8-jre-slim

# get ARGs
ARG MINDUSTRY_VERSION

# update repositories
RUN apt-get update

# install wget
RUN apt-get install wget -y

# download server version of mindustry
RUN wget https://github.com/Anuken/Mindustry/releases/download/${MINDUSTRY_VERSION}/server-release.jar

# start the sever
CMD java -jar server-release.jar