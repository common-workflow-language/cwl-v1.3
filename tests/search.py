#!/usr/bin/env python3

# Toy program to search inverted index and print out each line the term
# appears.

import sys

mainfile = sys.argv[1]
indexfile = sys.argv[1] + ".idx1"
term = sys.argv[2]

st = term + ": "

with open(mainfile) as main:
    with open(indexfile) as index:
        for a in index:
            if a.startswith(st):
                n = [int(i) for i in a[len(st) :].split(", ") if i]
                linenum = 0
                for line in main:
                    linenum += 1
                    if linenum in n:
                        print(f"{linenum} {line.rstrip()}")
                break
