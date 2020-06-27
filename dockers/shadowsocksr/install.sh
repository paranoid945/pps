#!/bin/bash

docker-compose -f ssr.yml up -d && docker-compose -f ssr.yml logs -f -t
