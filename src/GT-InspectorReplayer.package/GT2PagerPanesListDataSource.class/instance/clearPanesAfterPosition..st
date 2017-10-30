as yet unclassified
clearPanesAfterPosition: aPosition
	| previousSize |
	previousSize := panes size.
	aPosition + 1 to: previousSize do: [ :index | panes removeLast ].
	self notifyItemsRemoved: (aPosition + 1 to: previousSize).
