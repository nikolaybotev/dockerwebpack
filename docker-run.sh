#!/bin/bash

exec docker run --rm \
  -v $(pwd):/project \
  -w /project \
  --tty \
  centos:7 \
  bash -lc 'cd && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh | bash && . ~/.nvm/nvm.sh && cd - && nvm install && npm install && exec npm run webpack'
