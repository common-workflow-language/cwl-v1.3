class: CommandLineTool
cwlVersion: v1.3.0-dev1
initialWorkDir:
  - entryname: script.sh
    entry: |
      echo \
        "My country, 'tis of thee," \
        "Sweet land of liberty"

baseCommand: ["bash", "script.sh"]

inputs: []

outputs:
  out: stdout

stdout: out.txt