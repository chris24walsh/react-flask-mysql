# pull official base image
FROM ubuntu

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install python, mysql
RUN apt update
RUN apt install -y python3 python3-pip mysql-server mysql-client mysql-common libmysqlclient-dev 
RUN pip3 install flask flask-mysqldb flask-cors flask-bcrypt flask-jwt-extended

# install npm
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y npm

# install app dependencies
COPY package.json ./
RUN npm install

# add app
COPY . ./

# configure mysql database
RUN service mysql start && mysql < docker/setup.sql

# start app
CMD sh docker/run.sh
