#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
doc: "CommandLineTool without outputs."
hints:
  DockerRequirement:
    dockerPull: docker.io/debian:stable-slim
inputs:
  file1:
    type: File
    label: Input File
    inputBinding: {position: 1}
outputs: []
baseCommand: echo
