import json
import sys

with open(sys.argv[1]) as target:
    j = json.load(target)

json.dump({"class": j["class"], "basename": j["basename"]}, sys.stdout, sort_keys=True)
