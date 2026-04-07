class: Workflow
cwlVersion: v1.3.0-dev1
inputs:
  val: boolean
  file1: File
steps:
  nested:
    run:
      class: Workflow
      inputs:
        file1: File
      outputs:
        count_output:
          type: int
          outputSource: step2/output
        wc_output:
          type: File
          outputSource: step1/output
      steps:
        step1:
          run: ../wc-tool.cwl
          in:
            file1: file1
          out: [output]
        step2:
          run: ../parseInt-tool.cwl
          in:
            file1: step1/output
          out: [output]
    in:
      file1: file1
      val: val
    out: [count_output, wc_output]
    when: $(inputs.val)
outputs:
  out1:
    type: int?
    outputSource: nested/count_output
  out2:
    type: File?
    outputSource: nested/wc_output
requirements:
  SubworkflowFeatureRequirement: {}
