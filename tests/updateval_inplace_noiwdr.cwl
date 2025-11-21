#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  InplaceUpdateRequirement:
    inplaceUpdate: true

initialWorkDir:
  - entry: $(inputs.r)
    writable: true

hints:
  DockerRequirement:
    dockerPull: docker.io/python:3-slim
inputs:
  r: File
  script:
    type: File
    default:
      class: File
      location: updateval.py
outputs:
  out:
    type: File
    outputBinding:
      glob: $(inputs.r.basename)
arguments: [python, $(inputs.script), $(inputs.r.basename)]
