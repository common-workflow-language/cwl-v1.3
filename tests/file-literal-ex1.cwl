class: ExpressionTool
cwlVersion: v1.3.0-dev1
doc: | 
  Simple test that returns a literal file with a literal secondary file.
requirements:
  InlineJavascriptRequirement: {}
inputs: []
outputs:
  lit: File
expression: |
  ${
  return {
    "lit": {
        "class": "File", 
        "basename": "a_file", 
        "contents": "Hello file literal a.", 
        "secondaryFiles": [{
          "class": "File", 
          "basename": "b_file", 
          "contents": "Hello file literal b.", }
        ]
      }
    };
  }