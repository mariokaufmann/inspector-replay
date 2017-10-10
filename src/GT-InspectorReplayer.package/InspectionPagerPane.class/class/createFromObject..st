instance creation
createFromObject: anObject
	| tabs |
	tabs := InspectionPagerPaneTabGroupElement fromInspectionObject: anObject.
	^ self new title: anObject asString; elementBlock: [tabs]
	