#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  InplaceUpdateRequirement:
    inplaceUpdate: true

initialWorkDir:
  - entry: $(inputs.r)
    entryname: inp
    writable: true

inputs:
  r: Directory
outputs:
  out:
    type: Directory
    outputBinding:
      glob: inp
arguments: [touch, inp/blurb]
