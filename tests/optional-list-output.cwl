#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  input3:
    type: string
    inputBinding: {position: 1}
outputs:
  log:
    type: File
    outputBinding:
      glob: output.txt
  files_opt:
    type: File[]?
    outputBinding:
      glob: bumble*.txt
  files_empty:
    type: File[]
    outputBinding:
      glob: bumble*.txt
baseCommand: echo
stdout: output.txt
