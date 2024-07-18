cwlVersion: v1.3.0-dev1
class: CommandLineTool
doc: |
  Must fail if entryname starts with ../
inputs:
  filelist: File
outputs:
  head:
    type: File
    outputBinding:
      glob: head.txt

initialWorkDir:
  - entryname: ../input/stuff.txt  # Illegal
    entry: $(inputs.filelist)

requirements:
  ShellCommandRequirement: {}

arguments:
  - {shellQuote: false, valueFrom: "head -n10 ../input/stuff.txt > head.txt"}
