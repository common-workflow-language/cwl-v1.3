#!/usr/bin/env python3

# Toy program to generate inverted index of word to line.
# Takes input text file on stdin and prints output index on stdout.

import sys
import os
from pathlib import Path

words = {}
mainfile = sys.argv[1]
indexfile = sys.argv[1] + ".idx1"
linenum = 0

with open(mainfile) as main:
    for line in main:
        linenum += 1
        line = (
            line.rstrip()
            .lower()
            .replace(".", "")
            .replace(",", "")
            .replace(";", "")
            .replace("-", " ")
        )
        for word in line.split(" "):
            if word:
                if word not in words:
                    words[word] = set()
                words[word].add(linenum)

with open(indexfile, "w") as index:
    for w in sorted(words.keys()):
        index.write(
            "%s: %s" % (w, ", ".join((str(i) for i in sorted(words[w])))) + "\n"
        )

Path(os.path.splitext(sys.argv[1])[0] + ".idx2").touch(exist_ok=False)
Path(sys.argv[1] + ".idx3").touch(exist_ok=False)
Path(sys.argv[1] + ".idx4").touch(exist_ok=False)
Path(sys.argv[1] + ".idx5").touch(exist_ok=False)
Path(
    os.path.splitext(sys.argv[1])[0] + ".idx6" + os.path.splitext(sys.argv[1])[1]
).touch(exist_ok=False)
Path(sys.argv[1] + ".idx7").touch(exist_ok=False)
subdir = Path(sys.argv[1] + "_idx8")
subdir.mkdir()
(subdir / "index").touch(exist_ok=False)
