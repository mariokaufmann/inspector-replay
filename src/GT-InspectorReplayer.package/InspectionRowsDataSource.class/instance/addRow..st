adding
addRow: aRowElement

	rows add: aRowElement.
	aRowElement when: RowSelectionStateAnnouncement send: #onRowSelectionChanged: to: self.
	self notifyItemsInserted: (rows size to: rows size)