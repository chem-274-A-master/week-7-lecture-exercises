#!/bin/bash

set -eux

g++ -Wall -pedantic main.cpp -I. -o main
./main 2>&1 > output

cat output

grep -xq "\[1\] Bill" output
grep -xq "\[2\] Emily (chemistry)" output
grep -xq "Destructing scientist: Emily" output
grep -q "_ptr *<" main.cpp

rm output
