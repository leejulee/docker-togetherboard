# Create app directory
# RUN mkdir -p /usr/src/togetherboard

FROM leejulee/togetherboard:latest

MAINTAINER Leo Li

WORKDIR /usr/src/togetherboard

# Install
# npm install websocket optimist node-websocket-server --save
# RUN npm start

# Port

EXPOSE 8199

CMD [ "npm", "start" ]