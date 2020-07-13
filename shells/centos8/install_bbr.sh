#!/bin/bash

lsmod | grep bbr
wget --no-check-certificate https://github.com/sprov065/blog/raw/master/bbr.sh && bash bbr.sh
