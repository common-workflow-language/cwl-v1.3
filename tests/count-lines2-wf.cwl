#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.3.0-dev1
requirements:
  InlineJavascriptRequirement: {}

inputs:
    file1:
      type: File

outputs:
    count_output:
      type: int
      outputSource: step2/parseInt_output

steps:
  step1:
    in:
      wc_file1: file1
    out: [wc_output]
    run:
      id: wc
      class: CommandLineTool
      inputs:
        wc_file1:
          type: File
          inputBinding: {}
      outputs:
        wc_output:
          type: File
          outputBinding:
            glob: output.txt
      stdout: output.txt
      baseCommand: wc

  step2:
    in:
      parseInt_file1: step1/wc_output
    out: [parseInt_output]
    run:
      class: ExpressionTool
      inputs:
        parseInt_file1:
          type: File
          loadContents: true
      outputs:
        parseInt_output:
          type: int
      expression: >
        ${return {'parseInt_output': parseInt(inputs.parseInt_file1.contents)};}
