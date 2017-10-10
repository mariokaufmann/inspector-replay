accessing
steps
	| steps |
	steps := OrderedCollection new.
	rootStep ifNotNil: [
		steps add: rootStep.
		self addChildStepsOfStep: rootStep to: steps. ].
	^ steps 
	