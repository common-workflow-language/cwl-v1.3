#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  DockerRequirement:
    dockerPull: docker.io/python:3-slim
inputs:
  script:
    type: File
    default: {class: File, location: mkfilelist.py}
outputs:
  filelist: string[]
  bigstring: string
arguments: [python, $(inputs.script)]
