adding
addPanesForSessionSteps

	| intermediateResult |
	intermediateResult := session inspectionObject.
		session iterator steps do: [ :step |
			intermediateResult := step executeOn: intermediateResult.
			self window panesDataSource addPane: 
			(InspectionPagerPane 
			createFromObject: intermediateResult 
			onParentStep: step 
			inReplayer: self). ].