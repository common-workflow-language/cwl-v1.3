#!/usr/bin/env cwl-runner
cwlVersion: v1.3.0-dev1
class: CommandLineTool

inputs: []
baseCommand: [mkdir, a_dir, b_dir, c_dir]
outputs:
  directories:
    type: Directory[]
    outputBinding: { glob: '[a,b,c]_dir' }
