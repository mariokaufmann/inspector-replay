row management
rowUpdated: aRow
	| rowIndex |
	
	rowIndex := rows
		indexOf: aRow
		ifAbsent: [ ^ self ].

	self notifyItemsChanged: (rowIndex to: rowIndex)