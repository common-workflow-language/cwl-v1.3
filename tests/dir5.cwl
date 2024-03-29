class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
  - class: ShellCommandRequirement
  - class: InitialWorkDirRequirement
    listing: $(inputs.indir.listing)
inputs:
  indir:
    type: Directory
    loadListing: shallow_listing
outputs:
  outlist:
    type: File
    outputBinding:
      glob: output.txt
arguments: ["find", "-L", ".", "!", "-path", "*.txt",
  {shellQuote: false, valueFrom: "|"},
  "sort"]
stdout: output.txt
