cwlVersion: v1.3.0-dev1
class: CommandLineTool
inputs:
  inp1:
    type: File
    secondaryFiles:
      - pattern: ".2"
        required: true
requirements:
  ResourceRequirement:
    coresMin: .5
outputs:
 result: stdout
arguments: [echo, $(inputs.inp1.basename)]
