FROM adoptopenjdk:11-jre-openj9-bionic
ARG WORKING_HOME="/usr/local/my-digdag"
ARG DATA_HOME="/var/suna/bako"
ENV WORKING_HOME=$WORKING_HOME
ENV DATA_HOME=$DATA_HOME

RUN apt-get update \
  && apt-get install -y vim make tree tzdata gosu

RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest" \
  && chmod +x /usr/local/bin/digdag

RUN mkdir -p $DATA_HOME \
  && mkdir -p $DATA_HOME/a/b/c \
  && mkdir -p $DATA_HOME/x/y/z

WORKDIR $WORKING_HOME
COPY ./digdag-ls.dig ./

COPY entrypoint.sh /bin/
RUN chmod +x /bin/entrypoint.sh
ENTRYPOINT ["/bin/entrypoint.sh"]
