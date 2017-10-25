updating
createPaneModelFor: anObject onParentStep: aStep
	| tabs |
	tabs := InspectionPagerPaneTabGroupElement 
		onObject: anObject 
		onParentStep: aStep
		inReplayer: self inspectorModel. 
	^ GT2PagerPaneModel new title: anObject gtDisplayString; elementBlock: [tabs]