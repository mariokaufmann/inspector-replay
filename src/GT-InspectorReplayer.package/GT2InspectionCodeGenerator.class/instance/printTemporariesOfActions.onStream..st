accessing
printTemporariesOfActions: aCollection onStream: aStream
	| temporaries |
	temporaries := self collectTemporariesFromActions: aCollection.
	temporaries size > 0 ifFalse: [ ^ self ].
	aStream nextPutAll: '| '.
	temporaries do: [ :temporaryNode | 
		aStream nextPutAll: temporaryNode formattedCode.
		aStream nextPut: Character space. ].
	aStream nextPut: '|'.