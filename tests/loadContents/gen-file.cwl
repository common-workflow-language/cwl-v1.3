class: CommandLineTool
cwlVersion: v1.2
hints:
  - class: DockerRequirement
    dockerPull: docker.io/python:3-slim
baseCommand: [ "python", "myscript.py"]
inputs:
    model_name: string
    count: int
outputs:
  - id: model
    type: File
    outputBinding:
        loadContents: true
        glob: 'out.json'
        outputEval: $(JSON.parse(self[0].contents).file)

  - id: out_count
    type: int
    outputBinding:
        loadContents: true
        glob: 'out.json'
        outputEval: $(JSON.parse(self[0].contents).out_count)

requirements:
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entryname: 'myscript.py'
        entry: |
            import os
            import json
            inputs = json.loads(r"""$(inputs)""")
            filepath = os.path.join(os.getcwd(), inputs["model_name"])
            size = 65 * 1024 # 65 kB
            with open(filepath, 'w') as fd:
                fd.write("\0" * size)
            with open('./out.json', 'w') as fp:
                json.dump({
                    "file": {
                        'class': 'File', 
                        'path': filepath
                    },
                    "out_count": 10 + inputs['count']
                }, fp)
