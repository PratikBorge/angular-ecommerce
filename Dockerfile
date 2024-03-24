FROM ubuntu:22.04
LABEL engg="prat"

USER root
RUN apt update
RUN apt install git -y
RUN git clone https://github.com/SrikrushnaP/angular-ecommerce.git
WORKDIR /angular-ecommerce/
RUN apt upgrade -y
RUN apt install nodejs npm -y
RUN npm install
RUN npm install -g json-server
RUN npm install -g @angular/cli
RUN curl -sL https://deb.nodesource.com/setup_20.11.1.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN ng serve
EXPOSE 4200

CMD ["npm","start"]