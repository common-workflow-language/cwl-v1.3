#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1

requirements:
  ResourceRequirement:
      coresMin: $(inputs.special_file.size)
      coresMax: $(inputs.special_file.size)

inputs:
  special_file: File

outputs:
  output:
    type: stdout

baseCommand: echo

stdout: cores.txt

arguments: [ $(runtime.cores) ]
