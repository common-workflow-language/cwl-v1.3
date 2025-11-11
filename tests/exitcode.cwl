cwlVersion: v1.3.0-dev1
class: CommandLineTool
inputs: []
outputs:
  code:
    type: int
    outputBinding:
      outputEval: $(runtime.exitCode)
successCodes: [7]
arguments:
  - sh
  - -c
  - |
    exit 7
