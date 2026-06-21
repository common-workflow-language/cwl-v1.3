#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.2

requirements:
  ScatterFeatureRequirement: {}

inputs:
  testfile: File[]

outputs:
  testfile:
    type: File[]
    outputSource: testfile/testfile

steps:
  testfile:
    run: 
      class: CommandLineTool
      requirements:
        InitialWorkDirRequirement:
          listing:
            - entry: $(inputs.testfile)
              writable: false
      inputs:
        testfile: File
      outputs:
        testfile:
          type: File
          outputBinding:
            glob: $(inputs.testfile.basename)
      baseCommand: "true"
    in:
      testfile: testfile
    scatter: testfile
    out: [testfile]
