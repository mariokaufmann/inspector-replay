examples
example2
	| session list dict rootStep keyStep |
	rootStep := InteractionStep withIndex: 2.
	keyStep := InteractionStep withKey: 'testKey'.
	rootStep addChildStep: keyStep.
	keyStep addChildStep: (InteractionStep withCode: '^ self asOrderedCollection').
	
	session := InspectionSession new.
	session rootStep: rootStep.

	dict := Dictionary new.
	dict at: 'testKey' put: 42.
	dict at: 'abc' put: 15.

	list := { 
		Dictionary new.
		dict
 	}.

	^ session executeOn: list