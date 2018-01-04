FROM node:8.9

RUN chown -R node:node /usr/local/lib/node_modules \
  && chown -R node:node /usr/local/bin
RUN mkdir -p /var/lib/angular \
  && chown node:node /var/lib/angular

USER node
WORKDIR /var/lib/angular

RUN npm install -g @angular/cli
RUN ng set --global packageManager=yarn
