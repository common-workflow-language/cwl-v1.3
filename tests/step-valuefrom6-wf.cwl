#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.3.0-dev1
requirements:
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement

inputs:
  a: int
  b: int
  a1: 
    type: string 
    default: "hello.txt" 
  b1: 
    type: string 
    default: "hello.tar"

outputs:
  val:
    type: string
    outputSource: step1/echo_out

steps:
  step1:
    run:
      id: echo
      class: CommandLineTool
      inputs:
        c:
          type: string
          inputBinding: {}
        d:
          type: string
          inputBinding: {}
        e:
          type: string 
          inputBinding: {}
      outputs:
        echo_out:
          type: string
          outputBinding:
            glob: "step1_out"
            loadContents: true
            outputEval: $(self[0].contents)
      baseCommand: "echo"
      stdout: step1_out

    in:
      a: a
      b: b
      c:
        valueFrom: "a_$(inputs.a).b_$(inputs.b)"
      a1: a1
      b1: b1
      d:
        valueFrom: "a1_$(inputs.a1.replace('.txt', '')).b1_$(inputs.b1.toUpperCase())"
      e:
        valueFrom: | 
          ${
            var a = inputs.a + 1;
            var b = inputs.b1.concat(".gz");
            return "a2_" + a.toString() + ".b2_" + b;
          }
    out: [echo_out]
