as yet unclassified
navigateToChildElementOf: anElement
	| tempElement |
	tempElement := anElement.
	path do: [ :action |
		tempElement := action childElementOf: tempElement ].
	^ tempElement