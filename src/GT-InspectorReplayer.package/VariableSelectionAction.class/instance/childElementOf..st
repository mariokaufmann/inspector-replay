executing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: [ :each | (each columnValues at: 'Property') = instVarName ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.
	