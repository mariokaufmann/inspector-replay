initialization
addSession: anInspectionSession
	currentIndex := currentIndex + 1.
	currentIndex > buffer size ifTrue: [ currentIndex := 1 ].
	buffer at: currentIndex put: anInspectionSession.
