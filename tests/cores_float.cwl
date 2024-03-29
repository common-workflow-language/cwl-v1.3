#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1

requirements:
  ResourceRequirement:
      coresMin: 1.25
      coresMax: 1.75

inputs: []

outputs:
  output:
    type: stdout

baseCommand: echo

stdout: cores.txt

arguments: [ $(runtime.cores) ]
