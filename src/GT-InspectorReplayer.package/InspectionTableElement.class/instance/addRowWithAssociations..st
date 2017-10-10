adding
addRowWithAssociations: associations
	| row |
	row := InspectionRowElement new.
	associations do: [ :assoc |
		row put: assoc key atColumn: assoc value.
		].
	self rowsElement dataSource addRow: row.