instance creation
createFromObject: anObject onParentStep: anInteractionStep inReplayer: anInspectionReplayer
	| tabs |
	tabs := InspectionPagerPaneTabGroupElement 
	onObject: anObject 
	onParentStep: anInteractionStep
	inReplayer: anInspectionReplayer. 
	^ self new title: anObject asString; elementBlock: [tabs]
	