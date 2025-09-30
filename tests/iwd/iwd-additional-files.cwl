cwlVersion: v1.3.0-dev1
class: CommandLineTool
doc: |
  Create literal file in IWD and place input (file or directory) inside IWD
inputs:
  file_def: 
    type: 
      - File
      - Directory
outputs:
  head:
    type: 
      type: array
      items: Any 
    outputBinding:
      glob: "./*"
baseCommand: ["true"]
requirements:
  InitialWorkDirRequirement:
    listing:
      - entry: $(inputs.file_def)
      - entry: "{'class': 'File', 'contents': '1234'"
        entryname: population.txt