cwlVersion: v1.3.0-dev1
class: CommandLineTool
hints:
  - class: DockerRequirement
    dockerPull: docker.io/python:3-slim
inputs:
  - id: infile
    type: File?
    inputBinding:
      prefix: -cfg
      valueFrom: $(self.basename)
  - id: "args.py"
    type: File
    default:
      class: File
      location: args.py
    inputBinding:
      position: -1

baseCommand: python

outputs:
- id: args
  type: string[]
