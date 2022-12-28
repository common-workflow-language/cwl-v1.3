cwlVersion: v1.3.0-dev1
class: CommandLineTool

inputs:
  names:
    type: File
    inputBinding:
      position: 1

baseCommand: [ cat ]

outputs:
  sequence:
    type: stdout
