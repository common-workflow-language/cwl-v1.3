#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  InlineJavascriptRequirement: {}

initialWorkDir:
  - entryname: "out-number.json"
    entry: |
      ${
        return 44.4;
      }
inputs: []
outputs:
  filelist:
    type: File
    outputBinding:
      glob: out-number.json
arguments: ["true"]
