accessing
selectTabAt: aPosition
	super selectTabAt: aPosition.
	self elementRegistrationBlock value: (labelsElement children at: aPosition)