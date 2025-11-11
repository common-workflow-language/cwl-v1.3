#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
doc: "Test of capturing stderr output."
inputs: []
outputs:
  output_file:
    type: stderr
arguments:
 - sh
 - -c
 - |
   echo foo 1>&2
