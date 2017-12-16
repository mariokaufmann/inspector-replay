accessing
printActions: aCollection onStream: aStream
	self printTemporariesOfActions: aCollection onStream: aStream.
	aStream nextPut: Character linefeed.
	aCollection do: [ :each | self printAction: each onStream: aStream ].
	aStream nextPutAll: self class tempVariableName.
