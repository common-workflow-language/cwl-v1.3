#!/usr/bin/env cwl-runner

cwlVersion: v1.3.0-dev1

requirements:
  - class: DockerRequirement
    dockerPull: docker.io/debian:stable-slim
  - class: InitialWorkDirRequirement
    listing:
      - $(inputs.INPUT)

class: CommandLineTool

inputs:
  - id: INPUT
    type: File

outputs:
  - id: OUTPUT
    type: File
    outputBinding:
      glob: $(inputs.INPUT.basename)
    secondaryFiles:
      - .fai

arguments:
  - valueFrom: $(inputs.INPUT.basename).fai
    position: 0

baseCommand: [touch]
