cwlVersion: v1.1
class: CommandLineTool
inputs:
  inp1:
    type: File
    secondaryFiles:
      - pattern: ".2"
        required: true
outputs:
 result: stdout
arguments: [echo, $(inputs.inp1.basename)]
