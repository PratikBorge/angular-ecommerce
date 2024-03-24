FROM ubuntu:22.04
LABEL engg="prat"

USER root
RUN apt update
RUN apt install git -y
RUN git clone https://github.com/SrikrushnaP/angular-ecommerce.git
WORKDIR /angular-ecommerce/
ADD https://nodejs.org/dist/v20.11.1/node-v20.11.1-linux-x64.tar.xz .
RUN tar -xvf node-v14.17.0-linux-x64.tar.xz
RUN cp -r node-v14.17.0-linux-x64/* /usr/local/
RUN ln -s /usr/local/bin/node /usr/bin/node
RUN ln -s /usr/local/bin/npm /usr/bin/npm
RUN apt install npm
RUN npm install
RUN npm install -g json-server
RUN npm install -g @angular/cli
EXPOSE 4200

CMD ["npm","start"]