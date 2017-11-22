executing
transform: anObject
	| childCollection |
	childCollection := childBlock value: anObject.
	^ childCollection at: index.
	