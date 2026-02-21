#!/bin/bash

as $1 -o temp.o

gcc -o asem temp.o -nostdlib -static

rm temp.o

./asem
