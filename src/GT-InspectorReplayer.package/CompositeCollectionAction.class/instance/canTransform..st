executing
canTransform: anObject
	^ (anObject respondsTo: #isSequenceable) or: [ anObject respondsTo: #collect: ]