accessing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: 
		[ :each | (each columnValues at: 'Item') = navigationName ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.