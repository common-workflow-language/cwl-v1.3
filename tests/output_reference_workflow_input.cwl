cwlVersion: v1.3.0-dev1
class: Workflow

inputs:
  first:
    type: string
    default: me

steps: []

outputs:
  last:
   type: string
   outputSource: first
