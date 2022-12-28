class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs: []
outputs: []
requirements:
  ToolTimeLimit:
    timelimit: 3
  WorkReuse:
    enableReuse: false
baseCommand: [sleep, "15"]
