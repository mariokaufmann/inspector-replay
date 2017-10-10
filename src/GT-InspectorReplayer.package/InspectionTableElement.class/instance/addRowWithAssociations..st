adding
addRowWithAssociations: associations
	| row |
	row := InspectionRowElement new.
	associations do: [ :assoc |
		row put: assoc value atColumn: assoc key.
		].
	self rowsElement dataSource addRow: row.