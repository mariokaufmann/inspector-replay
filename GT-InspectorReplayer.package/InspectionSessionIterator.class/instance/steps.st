accessing
steps
	| steps |
	steps := OrderedCollection new.
	self addChildStepsOfStep: rootStep to: steps.
	^ steps 
	