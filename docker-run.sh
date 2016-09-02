#!/bin/bash

exec docker run --rm \
  -v $(pwd):/code \
  -w /code \
  --tty \
  centos:7 \
  bash -lc 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh | bash && cd && . ~/.nvm/nvm.sh && cd - && nvm install && npm install && exec npm run webpack'
