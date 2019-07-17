FROM adoptopenjdk:11-jre-openj9-bionic
WORKDIR /usr/local/my-digdag

RUN apt-get update \
  && apt-get install -y vim make tree tzdata gosu

RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest" \
  && chmod +x /usr/local/bin/digdag

ENV EXECUTE_USER=sunakan-dev-25252
ARG UID=25252
ARG GID=25252
RUN groupadd -g $GID $EXECUTE_USER && useradd -g $GID -u $UID $EXECUTE_USER

ENV INDEX_DATA_PATH=/var/a/b/c/data
RUN mkdir -p $INDEX_DATA_PATH \
  && chown $EXECUTE_USER $INDEX_DATA_PATH

COPY entrypoint.sh /bin/

ENTRYPOINT ["tint", "--", "/bin/entrypoint.sh"]
CMD ["bash"]
