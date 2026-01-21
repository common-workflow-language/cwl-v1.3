class: CommandLineTool
cwlVersion: v1.3.0-dev1
baseCommand: "true"
initialWorkDir:
  - entryname: $(inputs.newname)
    entry: $(inputs.srcfile)
inputs:
  srcfile: File
  newname: string
outputs:
  outfile:
    type: File
    outputBinding:
      glob: $(inputs.newname)
