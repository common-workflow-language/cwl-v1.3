#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
 - class: InlineJavascriptRequirement

inputs:
  - id: bar
    type: Any

outputs:
  - id: t1
    type: Any
    outputBinding:
      outputEval: $(inputs.bar.class || inputs.bar)

baseCommand: "true"
