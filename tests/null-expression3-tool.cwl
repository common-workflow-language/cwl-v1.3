#!/usr/bin/env cwl-runner

class: ExpressionTool
requirements: { InlineJavascriptRequirement: {} }
cwlVersion: v1.3.0-dev1

inputs: []

outputs:
  output: Any

expression: "$({'output': null })"
