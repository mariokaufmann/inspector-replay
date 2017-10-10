as yet unclassified
clearPanes
	| previousSize |
	previousSize := panes size.
	panes removeAll.
	self notifyItemsRemoved: (1 to: previousSize).