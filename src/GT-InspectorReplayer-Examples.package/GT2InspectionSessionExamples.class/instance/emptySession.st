as yet unclassified
emptySession
	<gtExample>
	| session |
	
	session := InspectionSession new.
	self assert: session rootStep notNil.
	self assert: session rootStep childSteps isEmpty.
	
	^ session
	