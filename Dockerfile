FROM node:12

WORKDIR /src

COPY package.json /src/
COPY yarn.lock /src/
RUN yarn

ADD . /src

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
