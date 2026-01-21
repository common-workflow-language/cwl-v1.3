class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  ShellCommandRequirement: {}
initialWorkDir:
  - entry: $(inputs.file1)
    entryname: bob.txt
inputs:
  file1: File
outputs: []
arguments:
  - shellQuote: false
    valueFrom: |
      test "$(inputs.file1.path)" = "$(runtime.outdir)/bob.txt"
