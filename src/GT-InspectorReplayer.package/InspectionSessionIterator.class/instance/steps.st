accessing
steps
	| steps |
	steps := OrderedCollection new.
	rootStep ifNotNil: [
		self addChildStepsOfStep: rootStep to: steps. ].
	^ steps 
	