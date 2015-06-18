FROM ubuntu:14.04.2
MAINTAINER kost - https://github.com/kost

RUN apt-get -qq update && \
apt-get install -yq  wget bash
ENV SUDO_USER root
RUN wget --quiet -O - https://raw.github.com/sans-dfir/sift-bootstrap/master/bootstrap.sh | bash -s -- -i -s -y

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["/bin/sh"]


