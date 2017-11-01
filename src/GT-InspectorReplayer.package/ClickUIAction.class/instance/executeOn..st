executing
executeOn: anElement
	| relevantElement |
	relevantElement := self navigateToChildElementOf: anElement.
	relevantElement dispatchEvent: (BlClickEvent new).
	relevantElement topMostParent forceLayout.