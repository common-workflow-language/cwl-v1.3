cwlVersion: v1.3.0-dev1
class: CommandLineTool

initialWorkDir:
  - $(inputs.src)

inputs:
  src:
    type: File
    inputBinding:
      position: 1
      valueFrom: $(self.nameroot).class

baseCommand: touch

outputs:
  classfile:
    type: File
    outputBinding:
      glob: "*.class"
