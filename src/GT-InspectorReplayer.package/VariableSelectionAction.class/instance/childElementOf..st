executing
childElementOf: aBlInfiniteListElement
	| row |
	" get corresponding child element, how to implement this? how much should this action know about the element it's embedded in?"
	row  := aBlInfiniteListElement dataSource detectRow: [ "...." ].
	^ aBlInfiniteListElement ensureRowVisibleFor: row.
	