$namespaces:
  edam: "http://edamontology.org/"
cwlVersion: v1.3.0-dev1
class: CommandLineTool
doc: "Reverse each line using the `rev` command"
inputs:
  input:
    type: File
    inputBinding: {}
    format: edam:format_2330

outputs:
  output:
    type: File
    outputBinding:
      glob: output.txt
    format: edam:format_2330

baseCommand: rev
stdout: output.txt