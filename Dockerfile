# Base_Image
FROM node:lts

EXPOSE 3000
ENV HOST 0.0.0.0

RUN apt-get update && \
    apt-get upgrade -y && \
    yarn global add @vue/cli && \
    yarn global add @vue/cli-init && \
    yarn global add nuxt create-nuxt-app

# Docker Cotainer上の作業ディレクトリ
WORKDIR /usr/src/app
