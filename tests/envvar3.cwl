#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs: []
outputs:
  results:
    type: File
    outputBinding: { glob: results }
hints:
  DockerRequirement:
    dockerPull: docker.io/debian:stable-slim
arguments:
  - sh
  - -c
  - |
    echo HOME=$HOME TMPDIR=$TMPDIR > log ;
    if [ "$HOME" = "$(runtime.outdir)" ] && [ "$TMPDIR" = "$(runtime.tmpdir)" ] ;
    then
        echo success > results ;
    else
        echo failure > results ;
    fi ;
