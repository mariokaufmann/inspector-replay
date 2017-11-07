as yet unclassified
onObject: anObject
	| newSession |
	newSession := self new inspectionObject: anObject.
	self sessionBuffer addSession: newSession.
	^ newSession