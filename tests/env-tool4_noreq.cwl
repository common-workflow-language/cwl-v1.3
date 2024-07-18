class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  in: string
outputs:
  out:
    type: File
    outputBinding:
      glob: out

envDef:
  TEST_ENV: conflict_original

baseCommand: ["/bin/bash", "-c", "echo $TEST_ENV"]

stdout: out
