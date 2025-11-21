#!/usr/bin/env cwl-runner

class: CommandLineTool
cwlVersion: v1.3.0-dev1
label: Check for a JS quoting bug

requirements:
  InlineJavascriptRequirement: {}
  ResourceRequirement:
    coresMin: 2
    ramMin: 1000


initialWorkDir:
  - entryname: file.txt
    entry: |
      ${return 'quote "' + inputs.quote + '"'}
  - entryname: script.sh
    entry: |
      set -xe
      cat file.txt

inputs:
  quote:
    type: string
    default: Hello

outputs:
  out:
    type: File
    outputBinding:
      glob: file.txt

baseCommand:
- echo
arguments: []
