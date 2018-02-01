executing
transform: anObject
	^ (anObject class compiler source: code; receiver: anObject) evaluate