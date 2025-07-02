FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY src ./src

ARG PORT=8000
ENV PORT=$PORT

EXPOSE $PORT

CMD ["npm", "start"]

