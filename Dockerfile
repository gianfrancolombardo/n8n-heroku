FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

RUN npm install music-metadata

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
