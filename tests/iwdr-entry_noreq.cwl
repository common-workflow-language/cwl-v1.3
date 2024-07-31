#!/usr/bin/env cwl-runner

class: CommandLineTool
cwlVersion: v1.3.0-dev1
baseCommand: ["cat", "example.conf"]

initialWorkDir:
  - entryname: example.conf
    entry: |
      CONFIGVAR=$(inputs.message)

inputs:
  message: string
outputs:
  out:
    type: File
    outputBinding:
      glob: example.conf
