#!/usr/bin/env cwl-runner
cwlVersion: v1.3.0-dev1
class: CommandLineTool

inputs: []
baseCommand: [touch, z, y, x, w, c, b, a]
outputs:
  letters:
    type: File[]
    outputBinding: { glob: '*' }
