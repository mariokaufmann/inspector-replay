executing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ':';
		nextPut: Character space.
	key printOn: aStream