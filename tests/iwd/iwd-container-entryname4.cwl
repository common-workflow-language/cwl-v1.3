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
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: ../input/stuff.txt  # Illegal
        entry: $(inputs.filelist)
arguments:
  - sh
  - -c
  - |
    head -n10 ../input/stuff.txt > head.txt
