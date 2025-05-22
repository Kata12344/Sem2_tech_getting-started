FROM node:24-alpine

RUN apk add --no-cache python3 g++ make
RUN apk add --no-cache python3-dev musl-dev libffi-dev


WORKDIR /app

COPY . .

RUN NODE_ENV=production yarn install

EXPOSE 3000

CMD ["node", "app/src/index.js"]