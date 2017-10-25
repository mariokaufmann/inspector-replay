callbacks
notifySessionChanged
	self announcer announce: (GT2InspectorSessionChanged new inspectionSession: self session)
	