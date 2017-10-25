examples
emptySession
	<gtExample>
	| session |
	
	session := GT2InspectionSession new.
	self assert: session rootStep notNil.
	self assert: session rootStep childSteps isEmpty.
	
	^ session
	