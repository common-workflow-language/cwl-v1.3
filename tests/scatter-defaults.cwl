class: Workflow
cwlVersion: v1.3.0-dev1

requirements:
  ScatterFeatureRequirement: {}
  SubworkflowFeatureRequirement: {}

inputs: []
outputs:
  result:
    type: File[]
    outputSource: step1/result

steps:
  step1:
    run: floats_small_and_large_nojs.cwl
    in: 
      annotation_prokka_evalue: 
        default: [0.1, 0.2]
    out: [ result ]
    scatter: annotation_prokka_evalue