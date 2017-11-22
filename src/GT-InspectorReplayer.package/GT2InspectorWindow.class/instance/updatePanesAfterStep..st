callbacks
updatePanesAfterStep: anInspectionStep
	| panesDataSource intermediateResult steps lastStepIndex |
	
	panesDataSource := self panesDataSource.
	steps := self inspectionSession iterator steps.
	lastStepIndex := steps indexOf: anInspectionStep ifAbsent: 1.
	
	panesDataSource clearPanesAfterPosition: lastStepIndex.

	intermediateResult := anInspectionStep inspectionObject.
	lastStepIndex + 1 to: steps size do: [ :stepIndex |
		| step |
		step := steps at: stepIndex.
		intermediateResult := step transformationAction transform: intermediateResult.
		step inspectionObject: intermediateResult.
		self pager addPane: (self 
			createPaneModelFor: intermediateResult
			onParentStep: step). ].
	