accessing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: 
		[ :each | (each columnValues at: 'Property') = key ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.