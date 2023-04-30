FROM openjdk:8-jre-slim

# get ARGs
ARG MINDUSTRY_VERSION

# update repositories
RUN apt-get update

# install curl
RUN apt-get install curl -y

# download server version of mindustry
RUN curl -L https://github.com/Anuken/Mindustry/releases/download/$MINDUSTRY_VERSION/server-release.jar > server-release.jar

# start the sever
CMD java -jar server-release.jar