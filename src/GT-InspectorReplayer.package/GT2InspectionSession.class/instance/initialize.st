initialization
initialize
	super initialize.
	uiActionRecorder := GT2UIActionRecorder new.
	self rootStep: GT2InspectionStep new