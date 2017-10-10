accessing
steps
	| steps |
	steps := OrderedCollection new.
	steps add: rootStep.
	self addChildStepsOfStep: rootStep to: steps.
	^ steps 
	