class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  inf: File
outputs:
  outlist:
    type: File
    outputBinding:
      glob: output.txt
arguments:
  - sh
  - -c
  - |
    cd $(inputs.inf.dirname)/xtestdir && find . | sort
stdout: output.txt
