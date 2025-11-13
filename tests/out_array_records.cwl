cwlVersion: v1.3.0-dev1
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
  SchemaDefRequirement:
    types: 
      - name: custom
        type: record
        fields:
          f_a: string
          f_b: string
  InitialWorkDirRequirement:
    listing:
      - entryname: script.sh
        entry: |  
          echo '{"result":' > cwl.output.json
          echo '$(inputs.in1)' | sed -E 's/": "([^"]*)"/": "\1z"/g' >> cwl.output.json
          echo '}' >> cwl.output.json
inputs:
  in1: 
    type: 
      type: array 
      items: custom
baseCommand: ["bash", "script.sh"]
outputs:
  result: 
    type: 
      type: array 
      items: custom
