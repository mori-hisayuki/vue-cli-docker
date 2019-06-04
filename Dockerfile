FROM node:12.3.1-alpine
WORKDIR /home
RUN apk update && \
    apk add git && \
    apk add curl && \
    curl -o- -L https://yarnpkg.com/install.sh | sh

ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

# ホットリロード
ENV CHOKIDAR_USEPOLLING=true
RUN yarn global add @vue/cli

EXPOSE 8080

CMD ["/bin/sh"]
