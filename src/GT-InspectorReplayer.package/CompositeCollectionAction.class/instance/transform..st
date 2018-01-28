executing
transform: aCollection
	^ aCollection collect: [ :each | self applyTransformationsOnObject: each ]