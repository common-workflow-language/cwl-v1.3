class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs: []
outputs: []
arguments:
  - sh
  - -c
  - |
    echo "HOME=$HOME" "TMPDIR=$TMPDIR" && test "$HOME"=$(runtime.outdir) -a "$TMPDIR"=$(runtime.tmpdir)
