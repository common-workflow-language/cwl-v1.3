class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  DockerRequirement:
    dockerPull: docker.io/python:3-slim
inputs: []
outputs: []
baseCommand: python
arguments:
  - "-c"
  - valueFrom: |
      import urllib.request
      assert(urllib.request.urlopen("http://commonwl.org").code == 200)