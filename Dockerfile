FROM centos:7
LABEL engg="prat"

USER root

RUN git clone "https://github.com/SrikrushnaP/angular-ecommerce.git"
WORKDIR /angular-ecommerce/
RUN apt update
RUN apt install nodejs npm -y
RUN npm install
RUN npm install -g json-server

EXPOSE 4200
CMD [ "ng" , "serve" ]