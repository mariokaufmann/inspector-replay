accessing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: 
		[ :each | (each columnValues at: 'Index') = index asString ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.