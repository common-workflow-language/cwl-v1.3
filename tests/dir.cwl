class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  indir: Directory
outputs:
  outlist:
    type: File
    outputBinding:
      glob: output.txt
arguments:
  - sh
  - -c
  - |
    cd $(inputs.indir.path) && find . | sort
stdout: output.txt
