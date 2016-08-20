#!/bin/bash

exec docker run --rm \
  -u 1000:1000 \
  -e "HOME=/home/user" \
  --tmpfs /home/user \
  -v $(pwd):/project \
  -w /project \
  --tty \
  node:6.4 \
  npm run webpack
