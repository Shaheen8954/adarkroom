FROM node:18-alpine as builder

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

FROM gcr.io/distroless/nodejs18-debian11

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 3000

CMD ["dev-server.js"]
