FROM ubuntu:14.04
MAINTAINER kost - https://github.com/kost

ENV SUDO_USER root

RUN echo "Start" && \
apt-get -qq update && \
apt-get install -yq  wget bash && \
(wget --quiet -O - https://raw.github.com/sans-dfir/sift-bootstrap/master/bootstrap.sh | bash -s -- -i -s -y dev) && \
echo "Finish"

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["/bin/sh"]


