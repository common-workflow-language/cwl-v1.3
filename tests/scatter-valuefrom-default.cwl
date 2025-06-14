class: Workflow
cwlVersion: v1.3.0-dev1

requirements:
  StepInputExpressionRequirement: {}
  SubworkflowFeatureRequirement: {}
  ScatterFeatureRequirement: {}
  InlineJavascriptRequirement: {}

inputs: 
  min_std_max_min: int[]

outputs:
  out1:
    type: string[]
    outputSource: step1/out1

steps:
  step1:
    run: 
      class: Workflow
      inputs: 
        value: int
      outputs:
        out1:
          type: string
          outputSource: step2/out1
      steps:
        step2:
          run: conditionals/cond-wf-003_nojs.cwl
          in: 
            val: value
            test: 
              valueFrom: "$(true)"
          out: [ out1 ]
    scatter: value
    in:
      value: min_std_max_min
    out: [out1]