#!/bin/bash

as $1 -o temp.o
ld -o asem temp.o

rm temp.o

./asem