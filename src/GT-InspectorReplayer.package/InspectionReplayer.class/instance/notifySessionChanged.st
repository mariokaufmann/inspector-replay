callbacks
notifySessionChanged
	| panesDataSource |
	panesDataSource := window panesDataSource.
	panesDataSource clearPanes.
	
	panesDataSource addPane: (InspectionPagerPane 
		createFromObject: session inspectionObject
		onParentStep: session rootStep
		inReplayer: self).
	
	self addPanesForSessionSteps.
	
	