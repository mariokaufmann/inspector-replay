executing
executeOn: anElement
	| relevantElement |
	relevantElement := self navigateToChildElementOf: anElement.
	"BlSpace simulateClickOn: anElement."
	relevantElement dispatchEvent: (BlClickEvent new).
	relevantElement topMostParent forceLayout.