as yet unclassified
navigateToChildElementOf: anElement
	| tempElement |
	tempElement := anElement.
	path do: [ :action |
		tempElement := action executeOn: tempElement ].
	^ tempElement