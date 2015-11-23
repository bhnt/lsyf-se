FROM docker.io/node
MAINTAINER shjf99 (shjf99 # google mail)

RUN cd /; git clone https://github.com/bhnt/stackedit.git

WORKDIR /stackedit

RUN cd /stackedit; npm install \
    && npm install bower \
    && node_modules/bower/bin/bower install --production --config.interactive=false --allow-root

EXPOSE 3000

CMD ["node", "/stackedit/server.js"]
