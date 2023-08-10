cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  secondary-malignancy_lymph-nodes-neoplasm---primary:
    run: secondary-malignancy_lymph-nodes-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  secondary-malignancy_lymph-nodes---primary:
    run: secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: secondary-malignancy_lymph-nodes-neoplasm---primary/output
  parotid-secondary-malignancy_lymph-nodes---primary:
    run: parotid-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: secondary-malignancy_lymph-nodes---primary/output
  cervical-secondary-malignancy_lymph-nodes---primary:
    run: cervical-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: parotid-secondary-malignancy_lymph-nodes---primary/output
  intrathoracic-secondary-malignancy_lymph-nodes---primary:
    run: intrathoracic-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cervical-secondary-malignancy_lymph-nodes---primary/output
  internal-secondary-malignancy_lymph-nodes---primary:
    run: internal-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: intrathoracic-secondary-malignancy_lymph-nodes---primary/output
  mediastinal-secondary-malignancy_lymph-nodes---primary:
    run: mediastinal-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: internal-secondary-malignancy_lymph-nodes---primary/output
  tracheobronchial-secondary-malignancy_lymph-nodes---primary:
    run: tracheobronchial-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: mediastinal-secondary-malignancy_lymph-nodes---primary/output
  secondary-malignancy_lymph-nodes-inferior---primary:
    run: secondary-malignancy_lymph-nodes-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: tracheobronchial-secondary-malignancy_lymph-nodes---primary/output
  intraabdominal-secondary-malignancy_lymph-nodes---primary:
    run: intraabdominal-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: secondary-malignancy_lymph-nodes-inferior---primary/output
  mesenteric-secondary-malignancy_lymph-nodes---primary:
    run: mesenteric-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: intraabdominal-secondary-malignancy_lymph-nodes---primary/output
  secondary-malignancy_lymph-nodes-iliac---primary:
    run: secondary-malignancy_lymph-nodes-iliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: mesenteric-secondary-malignancy_lymph-nodes---primary/output
  upper-secondary-malignancy_lymph-nodes---primary:
    run: upper-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: secondary-malignancy_lymph-nodes-iliac---primary/output
  secondary-malignancy_lymph-nodes-axilla---primary:
    run: secondary-malignancy_lymph-nodes-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: upper-secondary-malignancy_lymph-nodes---primary/output
  inguinal-secondary-malignancy_lymph-nodes---primary:
    run: inguinal-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: secondary-malignancy_lymph-nodes-axilla---primary/output
  intrapelvic-secondary-malignancy_lymph-nodes---primary:
    run: intrapelvic-secondary-malignancy_lymph-nodes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: inguinal-secondary-malignancy_lymph-nodes---primary/output
  secondary-unspecified-malignant-neoplasm-lymph-secondary-malignancy_lymph-nodes-nodes---secondary:
    run: secondary-unspecified-malignant-neoplasm-lymph-secondary-malignancy_lymph-nodes-nodes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: intrapelvic-secondary-malignancy_lymph-nodes---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: secondary-unspecified-malignant-neoplasm-lymph-secondary-malignancy_lymph-nodes-nodes---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
