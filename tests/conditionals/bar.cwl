class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  in1: int
baseCommand: [echo]
outputs:
  out1:
    type: string
    outputBinding:
      outputEval: bar $(inputs.in1)
