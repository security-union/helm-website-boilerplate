FROM node:alpine

ENV NODE_ENV=production

WORKDIR /my-website

COPY . .

RUN yarn install 
RUN yarn build

EXPOSE 4444

ENTRYPOINT [ "yarn", "start", "--port", "4444" ]

STOPSIGNAL SIGKILL
