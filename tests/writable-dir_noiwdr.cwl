cwlVersion: v1.3.0-dev1
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}

initialWorkDir:
  - entryname: emptyWritableDir
    writable: true
    entry: "$({class: 'Directory', listing: []})"

inputs: []
outputs:
  out:
    type: Directory
    outputBinding:
      glob: emptyWritableDir
arguments: [touch, emptyWritableDir/blurg]
