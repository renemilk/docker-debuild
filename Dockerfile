FROM ubuntu:xenial
MAINTAINER github@milk.pm

RUN apt-get update
# https://wiki.debian.org/BuildingTutorial
RUN apt-get install -y --no-install-recommends build-essential fakeroot devscripts equivs

VOLUME ["/target"]

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
