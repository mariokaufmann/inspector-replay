accessing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: 
		[ :each | (each columnValues at: 'Key') = key ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.