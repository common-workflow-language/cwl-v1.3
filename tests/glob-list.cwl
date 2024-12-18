cwlVersion: v1.3.0-dev1
class: CommandLineTool
baseCommand: [cp, -r]
arguments:
  - position: 2
    valueFrom: $(runtime.outdir)
inputs:
  indir:
    type: Directory
    inputBinding:
      position: 1
outputs:
  result:
    type: File[]
    outputBinding:
      glob: 
        - "$(inputs.indir.basename)/*.txt"
        - "$(inputs.indir.basename)/*.csv"
