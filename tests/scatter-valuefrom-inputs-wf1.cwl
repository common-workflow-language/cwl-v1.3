#!/usr/bin/env cwl-runner
cwlVersion: v1.3.0-dev1
class: Workflow
inputs:
  inp:
    type:
      type: array
      items:
        type: record
        name: instr
        fields:
          - name: instr
            type: string
outputs:
  out:
    type:
      type: array
      items: string
    outputSource: step1/echo_out

requirements:
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement

steps:
  step1:
    in:
      echo_unused: inp
      echo_in:
        valueFrom: $(inputs.echo_unused.instr)
      first:
        source: inp
        valueFrom: "$(self[0].instr)"
    out: [echo_out]
    scatter: echo_unused
    run:
      class: CommandLineTool
      inputs:
        first:
          type: string
          inputBinding:
            position: 1
        echo_in:
          type: string
          inputBinding:
            position: 2
        echo_unused: Any
      outputs:
        echo_out:
          type: string
          outputBinding:
            glob: "step1_out"
            loadContents: true
            outputEval: $(self[0].contents)
      baseCommand: "echo"
      arguments:
        - "-n"
        - "foo"
      stdout: "step1_out"
