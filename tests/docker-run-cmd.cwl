class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  DockerRequirement:
    dockerPull: docker.io/bash:4.4
inputs: []
outputs:
  cow:
    type: File
    outputBinding:
      glob: cow
baseCommand: ["-c", "echo 'moo' > cow"]
