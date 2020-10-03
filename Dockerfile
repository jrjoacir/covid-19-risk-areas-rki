FROM alpine:3.12
WORKDIR /usr/src/app
RUN apk add --update nodejs npm
COPY . .
COPY countries.geojson dist
RUN npm install
