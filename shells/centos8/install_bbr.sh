#!/bin/bash

sysctl net.ipv4.tcp_available_congestion_control
wget --no-check-certificate https://github.com/sprov065/blog/raw/master/bbr.sh && bash bbr.sh
