#!/bin/bash

set -eux

g++ -Wall -pedantic main.cpp -I. -o main
./main 2>&1 > output

grep -xq "Connecting to ip address: 12\.34\.56\.78" output
grep -xq "Disconnecting from ip address 12\.34\.56\.78" output

rm output
