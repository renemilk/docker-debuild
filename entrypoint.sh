#!/bin/sh

cd /target || exit 1

set -e
mk-build-deps --install --remove --tool "apt-get --no-install-recommends --yes"
eval "debuild $DOCKER_DEBUILD_OPTS -us -uc --lintian-opts --allow-root"
