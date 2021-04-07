#!/bin/bash

trap "echo caught signal" SIGINT SIGTERM  # Catch the important stuff

while true; do date >> /data/ps.txt; ps -ef >> /data/ps.txt; sleep 60; done  # Sleep forever 
