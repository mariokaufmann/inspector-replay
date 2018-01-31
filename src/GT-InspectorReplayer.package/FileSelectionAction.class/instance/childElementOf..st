executing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: 
		[ :each | (each columnValues at: 'Name') = fileName asString ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.