executing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ':';
		nextPut: Character space.
	instVarName printOn: aStream
