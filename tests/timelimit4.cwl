class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs: []
outputs: []
requirements:
  InlineJavascriptRequirement: {}
  ToolTimeLimit:
    timelimit: $(1+2)
  WorkReuse:
    enableReuse: false
baseCommand: [sleep, "15"]
