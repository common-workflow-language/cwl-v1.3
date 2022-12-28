#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.3.0-dev1
inputs:
  filelist:
    type: File
    loadContents: true
outputs: []
baseCommand: "true"
