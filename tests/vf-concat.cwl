cwlVersion: v1.3.0-dev1
class: CommandLineTool
requirements:
  - class: InlineJavascriptRequirement

baseCommand: echo
inputs:
  file1:
    type: File?
    inputBinding:
      valueFrom: $("a ")$("string")
outputs:
  out:
    type: string
    outputBinding:
      glob: output.txt
      loadContents: true
      outputEval: $(self[0].contents)
stdout: output.txt
