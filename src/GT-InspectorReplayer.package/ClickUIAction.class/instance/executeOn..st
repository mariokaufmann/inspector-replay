executing
executeOn: anElement
	| relevantElement |
	relevantElement := self navigateToChildElementOf: anElement.
	BlSpace simulateClickOn: relevantElement.