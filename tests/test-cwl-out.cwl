class: CommandLineTool
cwlVersion: v1.3.0-dev1
hints:
  DockerRequirement:
    dockerPull: docker.io/debian:stable-slim

inputs: []

outputs:
  - id: foo
    type: File

arguments:
   - sh
   - -c
   - |
     echo foo > foo && echo '{"foo": {"path": "$(runtime.outdir)/foo", "class": "File"} }' > cwl.output.json
