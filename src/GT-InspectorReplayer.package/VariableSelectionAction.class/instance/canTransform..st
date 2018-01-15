executing
canTransform: anObject
	anObject class instVarIndexFor: instVarName ifAbsent: [ ^ false ].
	^ true