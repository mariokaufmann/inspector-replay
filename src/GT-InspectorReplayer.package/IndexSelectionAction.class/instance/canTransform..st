executing
canTransform: anObject
	(anObject respondsTo: #at:)
		ifTrue: [ ^ anObject size >= index ]
		ifFalse: [ ^ false ]