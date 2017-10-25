updating
createPaneModelFor: anObject onParentStep: aStep
	| tabs |
	tabs := InspectionPagerPaneTabGroupElement 
		onObject: anObject 
		onParentStep: aStep
		withNavigationBlock: [ :anAction | self inspectorModel addNewStepForAction: anAction withParent: aStep ] . 
	^ GT2PagerPaneModel new title: anObject gtDisplayString; elementBlock: [tabs]