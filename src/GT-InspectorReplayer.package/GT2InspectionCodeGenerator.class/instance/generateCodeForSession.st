accessing
generateCodeForSession
	| actions stream |
	actions := session iterator stepsWithoutRoot collect: [ :step | step transformationAction transformAST ].
	stream := WriteStream on: ''.
	self printActions: actions onStream: stream.
	^ stream contents