#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
doc: "Create a file under adir/, symlink it to working directory (./) and glob symlink. The executor should resolve this symlink"
hints:
  DockerRequirement:
    dockerPull: docker.io/alpine:latest
inputs: []
outputs:
  output_file:
    type: File
    outputBinding: {glob: symlink.txt}

arguments:
  - sh
  - -c
  - |
    mkdir adir && echo "Who's gonna drive you home" > adir/original.txt && ln -s adir/original.txt symlink.txt
