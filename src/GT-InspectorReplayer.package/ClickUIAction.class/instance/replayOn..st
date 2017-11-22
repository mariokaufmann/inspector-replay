executing
replayOn: anElement
	| relevantElement aPosition |
	relevantElement := self navigateToChildElementOf: anElement.
	
	anElement topMostParent forceLayout.
	"aPosition := anElement bounds inSpace center.
	anElement dispatchEvent: (BlClickEvent new button: BlMouseEvent primaryButton; position: aPosition)."
	BlSpace simulateClickOn: relevantElement.
	relevantElement topMostParent forceLayout.