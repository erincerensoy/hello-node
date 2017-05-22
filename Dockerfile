FROM node:boron

RUN echo "Create app directory"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN echo "Install app dependencies"
COPY package.json /usr/src/app/
RUN npm i

RUN echo "Bundle app source"
COPY . /usr/src/app

EXPOSE 8080

CMD [ "npm", "start" ]