FROM adoptopenjdk:11-jre-openj9-bionic
WORKDIR /usr/local/my-digdag

RUN apt-get update && \
  apt-get install -y vim make tree tzdata

RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest" && \
  chmod +x /usr/local/bin/digdag
