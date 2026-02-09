FROM docker:26-cli

WORKDIR /app

COPY . .

RUN apk add --no-cache docker-compose

CMD ["docker-compose", "up"]
