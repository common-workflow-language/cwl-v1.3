class: Workflow
cwlVersion: v1.3.0-dev1
inputs:
  val: int[]

steps:

  step1:
    in:
      in1: val
      a_new_var: val
    run: foo.cwl
    when: $(inputs.a_new_var > 3)
    out: [out1]
    scatter: [in1, a_new_var]
    scatterMethod: dotproduct
    
outputs:
  out1:
    type: string[]
    outputSource: step1/out1
    pickValue: all_non_null

requirements:
  InlineJavascriptRequirement: {}
  ScatterFeatureRequirement: {}
