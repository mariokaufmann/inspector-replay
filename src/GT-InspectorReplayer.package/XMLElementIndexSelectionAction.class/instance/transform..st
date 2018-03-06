executing
transform: anOrderedCollection
	^ (anOrderedCollection select: [ :each | each isElement]) at: index