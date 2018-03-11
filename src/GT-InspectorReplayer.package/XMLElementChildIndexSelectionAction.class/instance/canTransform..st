executing
canTransform: anObject
	(anObject respondsTo: #nodes) and: 
		[ anObject nodes isSequenceable and: [ ^ anObject nodes size >= index ] ].
	^ false