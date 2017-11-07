initialization
addSession: anInspectionSession
	buffer at: currentIndex put: anInspectionSession.
	currentIndex := currentIndex + 1.
	currentIndex > buffer size ifTrue: [ currentIndex := 1 ].