accessing
transform: aMooseModel
	^ aMooseModel navigationActions detect: [ :each | (each key arguments at: 1) = navigationName]