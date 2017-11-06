as yet unclassified
navigateToChildElementOf: anElement
	| tempElement |
	tempElement := anElement.
	path do: [ :index |
		tempElement := tempElement children at: index. ].
	^ tempElement