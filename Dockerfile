# Create app directory
# RUN mkdir -p /usr/src/togetherboard

# FROM node:slim
FROM ubuntu

MAINTAINER Leo Li

# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get install -y git

RUN apt-get install -y nodejs

# Make demo dir
RUN mkdir /user/demo/

RUN cd /user/demo/

# Clone the conf files into the docker container
RUN git clone https://github.com/leejulee/TogetherBoard.git 

RUN cd /user/demo/TogetherBoard && npm install

WORKDIR /user/demo/TogetherBoard

CMD [ "npm", "t" ]

EXPOSE 8080

#=================================================================
# is local path, not container 
# WORKDIR /usr/src/togetherboard

# Install
# npm install websocket optimist node-websocket-server --save
# RUN npm start

#RUN cd /usr/src/togetherboard

# Port

#EXPOSE 8199

#CMD [ "npm", "start" ]