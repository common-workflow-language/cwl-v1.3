cwlVersion: v1.3.0-dev1
class: CommandLineTool
inputs:
  scattered_message:
    type: string
    inputBinding:
      position: 2
  message:
    type: string
    inputBinding:
      position: 1
outputs:
  out_message:
    type: stdout
baseCommand: echo
