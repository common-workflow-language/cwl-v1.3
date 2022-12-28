class: CommandLineTool
cwlVersion: v1.3.0-dev1

requirements:
  DockerRequirement:
      dockerPull: docker.io/debian:stable-slim
  InlineJavascriptRequirement: {}
  InitialWorkDirRequirement:
    listing: |
      ${
         return [{"class": "Directory",
                  "basename": "subdir",
                  "listing": [ inputs.filelist ]
                  }]}

inputs:
  filelist: File

outputs:
  same:
   type: File
   outputBinding:
     glob: subdir/$(inputs.filelist.basename)

baseCommand: echo
