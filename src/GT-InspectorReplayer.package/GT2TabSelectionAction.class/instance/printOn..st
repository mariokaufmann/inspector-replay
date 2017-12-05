accessing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ':';
		nextPut: Character space.
	tabName printOn: aStream