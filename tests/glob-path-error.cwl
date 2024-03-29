#!/usr/bin/env cwl-runner

cwlVersion: v1.3.0-dev1

requirements:
  - class: DockerRequirement
    dockerPull: docker.io/debian:stable-slim

class: CommandLineTool

inputs: []

outputs:
  - id: OUTPUT
    type: File
    outputBinding:
      glob: /etc/passwd

baseCommand: [echo]
