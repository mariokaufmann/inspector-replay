accessing
addChildStepsOfStep: anInteractionStep to: anOrderedCollection
| latestStep |
anInteractionStep childSteps isEmpty 
	ifTrue: [ ^ self ]
	ifFalse: [ 
		latestStep := anInteractionStep lastChildStep.
		anOrderedCollection add: latestStep.
		self addChildStepsOfStep: latestStep toCollection: anOrderedCollection 
		 ]