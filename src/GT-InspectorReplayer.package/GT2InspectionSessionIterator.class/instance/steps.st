accessing
steps
	| steps |
	steps := OrderedCollection new.
	steps add: rootStep.
	rootStep ifNotNil: [
		self addChildStepsOfStep: rootStep to: steps. ].
	^ steps 
	