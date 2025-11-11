class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs: {}
outputs:
  foo: File
arguments:
  - sh
  - -c
  - |
    echo "cow" > "$(runtime.outdir)/foo" &&
    echo "moo" > "$(runtime.tmpdir)/foo" &&
    echo '{"foo": {"path": "$(runtime.outdir)/foo", "class": "File"} }' > cwl.output.json
