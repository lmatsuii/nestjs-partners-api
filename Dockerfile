FROM node:20-slim

RUN apt update && apt install -y openssl procps

RUN npm install -g @nestjs/cli@10.3.2

WORKDIR /home/node/app

USER node

CMD [ "/home/node/app/.docker/start-dev.sh" ]