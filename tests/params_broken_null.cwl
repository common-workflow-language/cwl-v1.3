class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  bar:
    type: Any
    default: "something"

outputs:
  output1:
    type: "null"
    outputBinding:
      outputEval: $(null.something)

baseCommand: "true"