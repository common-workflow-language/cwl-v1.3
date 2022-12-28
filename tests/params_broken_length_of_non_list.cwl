class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  bar:
    type: Any
    default: 0

outputs:
  output1:
    type: Any
    outputBinding:
      outputEval: $(inputs.bar.length)

baseCommand: "true"