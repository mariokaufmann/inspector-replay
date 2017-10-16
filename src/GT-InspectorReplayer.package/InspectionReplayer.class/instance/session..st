accessing
session: anInspectionSession
	session := anInspectionSession.
	self window inspectionSession: session.
	self notifySessionChanged.