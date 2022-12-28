class: ExpressionTool
cwlVersion: v1.3.0-dev1
inputs:
  f1: File
  newname: string
outputs:
  out: File
expression: |
  ${
  inputs.f1.basename = inputs.newname;
  return {"out": inputs.f1};
  }
