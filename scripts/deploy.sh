#!/bin/bash

rsync -aP --delete docs/ \
  oceanborn@192.168.170.8:web_environment/container/website_papa/