adding
addRow: aRowElement

	rows add: aRowElement.
	self notifyItemsInserted: (rows size to: rows size)