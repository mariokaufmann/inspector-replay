executing
canTransform: anObject
	(anObject respondsTo: #at:) and: 
		[ (anObject respondsTo: #includesKey:)
			ifTrue: [ ^ anObject includesKey: key ] ].
	^ false