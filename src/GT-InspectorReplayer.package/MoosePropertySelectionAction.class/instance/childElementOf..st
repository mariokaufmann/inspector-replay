accessing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: 
		[ :each | (each columnValues at: 'Properties') = property name ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.