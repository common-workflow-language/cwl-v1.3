class: Workflow
cwlVersion: v1.2
inputs:
  testdir: Directory
outputs:
  out:
    type: Directory
    outputSource: step2/testdir
steps:
  step1:
    run: iwd-subdir-tool_noreq.cwl
    in:
      testdir: testdir
    out: [testdir]
  step2:
    run: iwd-passthrough5_noreq.cwl
    in:
      testdir: step1/testdir
    out: [testdir]
