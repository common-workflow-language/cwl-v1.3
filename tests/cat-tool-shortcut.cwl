#!/usr/bin/env cwl-runner

class: CommandLineTool
cwlVersion: v1.3.0-dev1

requirements:
  - class: DockerRequirement
    dockerPull: docker.io/debian:stable-slim

inputs:
  file1: stdin

outputs:
  output:
    type: File
    outputBinding: { glob: output }

baseCommand: [cat]

stdout: output
