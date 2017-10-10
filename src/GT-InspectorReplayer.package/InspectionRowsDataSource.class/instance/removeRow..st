accessing
removeRow: aRowElement
	| rowIndex |
	
	rowIndex := rows
		indexOf: aRowElement
		ifAbsent: [ ^ self ].
		
	rows removeAt: rowIndex.
	self notifyItemsRemoved: (rowIndex to: rowIndex)