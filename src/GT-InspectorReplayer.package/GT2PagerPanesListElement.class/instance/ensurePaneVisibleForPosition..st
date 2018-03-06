initialization
ensurePaneVisibleForPosition: anInteger
	self scrollToPosition: anInteger.
	self findElementHolder: anInteger.
	^ (self findElementHolder: anInteger) itemElement
	