updating
updatePanes
	| panesDataSource intermediateResult |
	panesDataSource := self panesDataSource.
	panesDataSource clearPanes.
	
	panesDataSource addPane: (GT2PagerPaneModel 
		createFromObject: self inspectionSession inspectionObject
		onParentStep: self inspectionSession rootStep
		inReplayer: self inspectorModel).
	
	intermediateResult := self inspectionSession inspectionObject.
	self inspectionSession iterator steps do: [ :step |
		intermediateResult := step transformationAction executeOn: intermediateResult.
		self pager addPane: (GT2PagerPaneModel 
			createFromObject: intermediateResult 
			onParentStep: step 
			inReplayer: self inspectorModel).
		step parentVisualActionBlock value ].
	
	