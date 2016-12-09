FROM ubuntu:xenial
MAINTAINER github@milk.pm

RUN apt-get update
# https://wiki.debian.org/BuildingTutorial
RUN apt-get --yes install build-essential fakeroot devscripts

VOLUME ["/target"]

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
