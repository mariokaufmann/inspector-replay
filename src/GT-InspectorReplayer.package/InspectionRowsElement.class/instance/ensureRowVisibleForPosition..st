initialization
ensureRowVisibleForPosition: anInteger
	self scrollToPosition: anInteger.
	^ self findElementHolderForPosition: anInteger checkNew: true