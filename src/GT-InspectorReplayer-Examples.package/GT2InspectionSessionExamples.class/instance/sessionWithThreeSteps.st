examples
sessionWithThreeSteps
	<gtExample>
	| session list codeStep indexStep keyStep dict rawList |
	
	session := self emptySession.
	
	codeStep := GT2InspectionStep new transformationAction: (CodeAction withCode: '^ self asOrderedCollection').
	indexStep := GT2InspectionStep new transformationAction: (IndexSelectionAction withIndex: 2).
	codeStep addChildStep: indexStep.
	keyStep := GT2InspectionStep new transformationAction: (KeyAction withKey: 'testKey').
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
	