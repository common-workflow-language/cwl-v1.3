#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.3.0-dev1

inputs:
    file1: File

outputs:
    count_output:
      type: int
      outputSource: step1/output

steps:
  step1:
    run: wc3-tool.cwl
    in:
      file1:
        source: [file1]
        linkMerge: merge_nested
    out: [output]
