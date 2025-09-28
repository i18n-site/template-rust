#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex
if [ -d "sh" ]; then
  cd sh
  git pull
  cd ..
else
  git clone --depth=1 -b dev ssh://git@ssh.github.com:443/i18n-site/cargo_sh.git sh
fi
bun i
mise trust || true
