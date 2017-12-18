accessing
stepsWithoutRoot
	| steps |
	steps := OrderedCollection new.
	rootStep ifNotNil: [
		self addChildStepsOfStep: rootStep to: steps. ].
	^ steps 
	