cwlVersion: v1.3.0-dev1
class: CommandLineTool
inputs:
  record_input:
    type:
      type: record
      fields:
        f1:
          type: string
          default: "f1"
        f2:
          type: string
          default: "f2"
arguments: ['true']
outputs:
    v1:
        type: string
        outputBinding:
            outputEval: $(inputs.record_input.f1)
    v2:
        type: string
        outputBinding:
            outputEval: $(inputs.record_input.f2)
