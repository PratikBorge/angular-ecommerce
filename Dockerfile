FROM ubuntu:22.04
LABEL engg="prat"

USER root
RUN apt update
RUN apt install nodejs npm -y
RUN git clone https://github.com/PratikBorge/angular-ecommerce.git
WORKDIR /angular-ecommerce
RUN npm install
EXPOSE 3000

CMD [ "npm" ,"start" ]