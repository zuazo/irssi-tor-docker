### Irssi Tor Docker Container
[![GitHub](http://img.shields.io/badge/github-zuazo/irssi--tor--docker-blue.svg?style=flat)](https://github.com/zuazo/irssi-tor-docker) [![ImageLayers Size](https://img.shields.io/imagelayers/image-size/zuazo/irssi-tor/latest.svg)](https://imagelayers.io/?images=zuazo/irssi-tor:latest) [![Docker Repository on Quay.io](https://quay.io/repository/zuazo/irssi-tor/status 'Docker Repository on Quay.io')](https://quay.io/repository/zuazo/irssi-tor) [![Build Status](http://img.shields.io/travis/zuazo/irssi-tor-docker.svg?style=flat)](https://travis-ci.org/zuazo/irssi-tor-docker)

A minimal [Docker](https://www.docker.com/) image (~18MB) to run the IRC client [Irssi](https://irssi.org/) on [Tor](https://www.torproject.org/).

#### Supported Tags and Respective `Dockerfile` Links

- `latest` ([*/Dockerfile*](https://github.com/zuazo/irssi-tor-docker/tree/master/Dockerfile))

#### How to Use This Image

##### Download the Image

    $ docker pull zuazo/irssi-tor

##### Run Irssi

    $ docker run zuazo/irssi-tor

##### Passing Options to Irssi

    $ docker run -ti zuazo/irssi-tor \
      -c irc.twitch.tv -p 6667 \
      -n MYNICK -w oauth:MYTOKEN1234

##### Adding New Proxies to ProxyChains

```Dockerfile
FROM zuazo/irssi-tor

RUN echo 'socks4 myproxy.example.com 8080' >> $PROXYCHAINS_CONF
```

See the [`alpine-tor`](https://hub.docker.com/r/zuazo/alpine-tor/) image documentation for more information.

#### Build from Sources

Instead of installing the image from Docker Hub, you can build the image from sources if you prefer:

    $ git clone https://github.com/zuazo/irssi-tor-docker irssi-tor
    $ cd irssi-tor
    $ docker build -t zuazo/irssi-tor .

#### Read-only Environment Variables Used at Build Time

* `IRSSI_HOME`: Irssi user home directory.
* `IRSSI_CONF_DIR`: Irssi configuration directory.
* `IRSSI_SCRIPTS_DIR`: Directory where you add your Irssi scripts.
