examples
sessionWithThreeSteps
	<gtExample>
	| session list codeStep indexStep keyStep dict rawList |
	
	session := self emptySession.
	
	codeStep := InteractionStep withCode: '^ self asOrderedCollection'.
	indexStep := InteractionStep withIndex: 2.
	codeStep addChildStep: indexStep.
	keyStep := InteractionStep withKey: 'testKey'.
	indexStep addChildStep: keyStep.
	
	session rootStep addChildStep: codeStep.
	
	dict := Dictionary new.
	dict at: 'testKey' put: 42.
	dict at: 'abc' put: 15.
	list := OrderedCollection new.
	list add: Dictionary new.
	list add: dict.
	
	rawList := { 
 		Dictionary new.
		dict
		}.
	
	session inspectionObject: rawList.
	
	^ session
	