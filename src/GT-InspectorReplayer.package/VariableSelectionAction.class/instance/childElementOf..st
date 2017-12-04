executing
childElementOf: aBlInfiniteListElement
	| rowPosition |
	" get corresponding child element, how to implement this? how much should this action know about the element it's embedded in?"
	rowPosition  := aBlInfiniteListElement dataSource detectRowPosition: [ :each | (each columnValues at: 'Property') = instVarName ].
	^ aBlInfiniteListElement ensureRowVisibleForPosition: rowPosition.
	