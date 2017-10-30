callbacks
addNewStepForAction: anAction withParent: aParentStep
	| childStep |
	childStep := GT2InspectionStep new
		transformationAction: anAction.
	aParentStep addChildStep: childStep.
	self notifySessionChangedAfterStep: aParentStep.