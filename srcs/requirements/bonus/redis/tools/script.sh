#! /bin/bash

RUN service redis-server start
redis-server --protected-mode no