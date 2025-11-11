class: CommandLineTool
cwlVersion: v1.3.0-dev1
hints:
  DockerRequirement:
    dockerPull: docker.io/debian:stable-slim
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
