FROM node:18-alpine

ARG APP_ROOT
ENV APP_ROOT=${APP_ROOT:-/app}

COPY package.json ${APP_ROOT}/package.json
RUN yarn install

COPY . $APP_ROOT
WORKDIR $APP_ROOT

CMD yarn run start