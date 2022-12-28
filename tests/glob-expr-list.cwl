class: CommandLineTool
cwlVersion: v1.3.0-dev1

inputs:
  ids:
    type: string[]
    inputBinding:
      position: 1

outputs:
  files:
    type: File[]
    outputBinding:
      glob: $(inputs.ids)

baseCommand: touch
