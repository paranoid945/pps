#!/bin/bash

docker-compose -f seafile.yml up -d && docker-compose -f seafile.yml logs -f -t
