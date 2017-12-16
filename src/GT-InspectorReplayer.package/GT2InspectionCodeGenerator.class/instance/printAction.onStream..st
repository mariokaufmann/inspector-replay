accessing
printAction: anAction onStream: aStream
	visitor visitMethodNode: anAction.
	anAction body statements do: [ :each |
		each class == RBReturnNode
		ifTrue: [ 
			aStream nextPutAll: self class tempVariableName.
			aStream nextPutAll: ' := '.
			aStream nextPutAll: each value formattedCode.
			aStream nextPutAll: '.' ]
		ifFalse: [ aStream nextPutAll: each formattedCode  ] ].
	aStream nextPut: Character linefeed.
	
	
