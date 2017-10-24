adding
addRowWithAssociations: associations rowSelectAction: anInteractionStep
	| row |
	row := InspectionRowElement new.
	row tabElement: self.
	row rowSelectAction: anInteractionStep.
	associations do: [ :assoc |
		row put: assoc value atColumn: assoc key.
		].
	self rowsElement dataSource addRow: row.