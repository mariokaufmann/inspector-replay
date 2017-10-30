updating
updatePanes
	"Update all panes from the root step"
	self panesDataSource addPane: (self 
		createPaneModelFor: self inspectionSession inspectionObject
		onParentStep: self inspectionSession rootStep).
	self updatePanesAfterStep: self inspectionSession rootStep.
	