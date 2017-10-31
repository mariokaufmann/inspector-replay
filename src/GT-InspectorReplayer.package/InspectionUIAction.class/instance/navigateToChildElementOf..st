as yet unclassified
navigateToChildElementOf: anElement
	| tempElement |
	tempElement := anElement.
	path do: [ :index |
		tempElement := tempElement childAt: index. ].
	^ tempElement