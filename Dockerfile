FROM zuazo/alpine-tor
MAINTAINER Xabier de Zuazo "xabier@zuazo.org"

ENV IRSSI_HOME=/home/irssi
ENV IRSSI_CONF_DIR=$IRSSI_HOME/.irssi
ENV IRSSI_SCRIPTS_DIR=$IRSSI_CONF_DIR/scripts

RUN apk add --update \
      irssi && \
    rm -rf /var/cache/apk/* && \
    adduser -D -h $IRSSI_HOME -s /bin/sh irssi && \
    mkdir -p $IRSSI_CONF_DIR $IRSSI_SCRIPTS_DIR && \
    chown -R irssi:irssi $IRSSI_CONF_DIR $IRSSI_SCRIPTS_DIR

ENTRYPOINT ["/usr/bin/proxychains_wrapper", "-u", "irssi", "/usr/bin/irssi"]
