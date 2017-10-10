instance creation
createFromObject: anObject
	| tabs |
	tabs := InspectionPagerPaneTabGroupElement fromInteractionStep: (InteractionStep new inspectionObject: anObject).
	^ self new title: anObject asString; elementBlock: [tabs]
	