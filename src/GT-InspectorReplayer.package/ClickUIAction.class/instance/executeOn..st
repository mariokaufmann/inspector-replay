executing
executeOn: anElement
	| relevantElement |
	relevantElement := self navigateToChildElementOf: anElement.
	relevantElement fireEvent: (BlClickEvent new)