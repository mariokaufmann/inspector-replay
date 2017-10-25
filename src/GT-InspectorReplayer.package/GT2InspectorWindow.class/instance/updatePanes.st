updating
updatePanes
	| panesDataSource intermediateResult |
	panesDataSource := self panesDataSource.
	panesDataSource clearPanes.
	
	panesDataSource addPane: (self 
		createPaneModelFor: self inspectionSession inspectionObject
		onParentStep: self inspectionSession rootStep).
		
	intermediateResult := self inspectionSession inspectionObject.
	self inspectionSession iterator steps do: [ :step |
		intermediateResult := step transformationAction executeOn: intermediateResult.
		self pager addPane: (self 
			createPaneModelFor: intermediateResult
			onParentStep: step).
		step parentVisualActionBlock value ].
	
	