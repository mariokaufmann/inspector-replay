initialization
ensurePaneVisibleForPosition: anInteger
	self scrollToPosition: anInteger.
	^ (self findElementHolderForPosition: anInteger checkNew: true) itemElement