executing
canTransform: anObject
	(anObject respondsTo: #isSequenceable) and: 
		[ anObject isSequenceable and: [ ^ anObject size >= index ] ].
	^ false