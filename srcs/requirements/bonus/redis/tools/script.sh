#! /bin/bash

RUN service redis-server start
redis-server --protected-mode no

redis-cli -h localhost -p 6379