executing
canTransform: anObject
	| childCollection |
	childCollection := childBlock value: anObject.
	(childCollection respondsTo: #at:)
		ifTrue: [  ^ childCollection size >= index ]
		ifFalse: [ ^ false ]
	