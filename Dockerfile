FROM keymetrics/pm2:latest-alpine

RUN npm i -g pm2

WORKDIR /var/www/app
COPY ./package.json ./
RUN npm i
COPY ./ ./

ARG type
ARG exchange

ENV WORKER_TYPE $type 
ENV EXCHANGE $exchange 
ENV NODE_ENV production 

CMD ["pm2-runtime", "index.js", "i", "1"]
