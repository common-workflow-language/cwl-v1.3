import sys

with open(sys.argv[1], "r+") as f:
    val = int(f.read())
    f.seek(0)
    f.write(str(val + 1))
