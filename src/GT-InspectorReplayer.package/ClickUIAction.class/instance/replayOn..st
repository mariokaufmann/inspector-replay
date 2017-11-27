executing
replayOn: anElement
	| relevantElement |
	relevantElement := self navigateToChildElementOf: anElement.
	
	anElement topMostParent forceLayout.
	BlSpace simulateClickOn: relevantElement.
	relevantElement topMostParent forceLayout.