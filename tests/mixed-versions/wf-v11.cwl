cwlVersion: v1.1
class: Workflow

inputs:
  inp1:
    type: File
    secondaryFiles:
      - pattern: ".2"
        required: true
    default:
      class: File
      location: hello.txt

steps:
  toolv10:
    in: {inp1: inp1}
    out: [result]
    run: tool-v10.cwl
  toolv11:
    in: {inp1: inp1}
    out: [result]
    run: tool-v11.cwl
  toolv12:
    in: {inp1: inp1}
    out: [result]
    run: tool-v12.cwl
  toolv13:
    in: {inp1: inp1}
    out: [result]
    run: tool-v13.cwl

outputs:
  result0:
    type: File
    outputSource: toolv10/result
  result1:
    type: File
    outputSource: toolv11/result
  result2:
    type: File
    outputSource: toolv12/result
  result3:
    type: File
    outputSource: toolv13/result
