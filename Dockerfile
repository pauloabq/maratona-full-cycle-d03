    FROM node:13-alpine
    WORKDIR /usr/src/app

    COPY ./dist ./dist
    COPY ./views ./views
    COPY ./public ./public
    COPY ./package.json .

    RUN ls -la && npm install

    EXPOSE 3000

    CMD ["npm","run","start:prod"]