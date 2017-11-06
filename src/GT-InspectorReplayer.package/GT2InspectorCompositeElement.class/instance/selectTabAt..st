accessing
selectTabAt: aPosition
	super selectTabAt: aPosition.
	self uiActionRecorder recordClickOnElement: (labelsElement children at: aPosition)