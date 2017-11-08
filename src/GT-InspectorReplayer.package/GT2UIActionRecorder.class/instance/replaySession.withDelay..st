as yet unclassified
replaySession: anInspectionSession withDelay: aDelay
	self replayOn: (GT2InspectorWindow openOnModel: (GT2Inspector on: anInspectionSession inspectionObject)) root withDelay: aDelay.