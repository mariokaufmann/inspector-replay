printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ':';
		nextPut: Character space.
	paneIndex printOn: aStream