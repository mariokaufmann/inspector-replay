callbacks
notifySessionChangedAfterStep: lastValidStep
	self announcer announce: (GT2InspectorSessionChanged new inspectionSession: self session; lastValidStep: lastValidStep).
	