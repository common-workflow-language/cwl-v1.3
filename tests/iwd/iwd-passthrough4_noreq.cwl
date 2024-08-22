#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
initialWorkDir:
  - $(inputs.filelist)
inputs:
  filelist:
    type: File
outputs:
  filelist:
    type: File
    outputBinding:
      glob: $(inputs.filelist.basename)
baseCommand: "true"
