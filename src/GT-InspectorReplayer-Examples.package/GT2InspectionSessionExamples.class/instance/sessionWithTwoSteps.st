as yet unclassified
sessionWithTwoSteps
	<gtExample>
	| session rootStep keyStep dict list |
	
	session := self emptySession.
	
	rootStep := InteractionStep withIndex: 2.
	keyStep := InteractionStep withKey: 'testKey'.
	rootStep addChildStep: keyStep.
	
	session rootStep: rootStep.
	
	dict := Dictionary new.
	dict at: 'testKey' put: 42.
	dict at: 'abc' put: 15.
	list := OrderedCollection new.
	list add: Dictionary new.
	list add: dict.
	
	^ session
	