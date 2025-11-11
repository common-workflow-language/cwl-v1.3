class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs: []
outputs: []
hints:
  DockerRequirement:
    dockerPull: docker.io/debian:stable-slim
arguments:
  - sh
  - -c
  - |
    echo "HOME=$HOME" "TMPDIR=$TMPDIR" && test "$HOME"=$(runtime.outdir) -a "$TMPDIR"=$(runtime.tmpdir)
