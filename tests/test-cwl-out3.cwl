class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  - class: ShellCommandRequirement
hints:
  DockerRequirement:
    dockerPull: docker.io/debian:stable-slim

inputs: []

outputs:
  - id: foo
    type: File

arguments:
   - valueFrom: >
       echo foo > foo && echo '{"foo": {"path": "foo", "class": "File"} }' > cwl.output.json
     shellQuote: false
