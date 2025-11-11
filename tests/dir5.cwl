class: CommandLineTool
cwlVersion: v1.3.0-dev1
requirements:
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
arguments:
  - sh
  - -c
  - |
    find -L . ! -path "*.txt" | sort
stdout: output.txt
