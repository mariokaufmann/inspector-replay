executing
executeOn: anObject
	| childCollection |
	childCollection := childBlock value: anObject.
	^ childCollection at: index.
	