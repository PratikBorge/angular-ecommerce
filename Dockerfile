FROM node:18
LABEL engg="prat"

USER root
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g json-server
RUN npm install -g @angular/cli
COPY . .
RUN apt install openssl
EXPOSE 4200
CMD ["ng", "serve"]