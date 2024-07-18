class: CommandLineTool
cwlVersion: v1.2
doc: Given an input directory, emit a subdirectory as output
initialWorkDir:
  - entry: $(inputs.testdir)
    writable: false
inputs:
  testdir:
    type: Directory
outputs:
  testdir:
    type: Directory
    outputBinding:
      glob: testdir/c
baseCommand: "true"
