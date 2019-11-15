#!/usr/bin/env bash

# wait until mavros is up
until rosservice info /mavros/set_stream_rate | grep -m 1 "Node:*"; do : ; done

# wait a little bit
sleep 1;

# set stream rate for raw sensors
rosservice call /mavros/set_stream_rate 1 100 1

# set stream rate for extra1 (ekf estimate)
rosservice call /mavros/set_stream_rate 10 100 1
