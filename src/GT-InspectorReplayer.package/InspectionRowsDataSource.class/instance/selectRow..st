row management
selectRow: aRow
	(self hasSelectedRow and: [ self selectedRow ~~ aRow ])
		ifTrue: [ self deselectRow: self selectedRow ].
	
	(self hasSelectedRow and: [ self selectedRow == aRow ])
		ifTrue: [ ^ self ].	

	selectedRow := aRow.
	self rowUpdated: aRow