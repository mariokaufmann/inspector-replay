adding
addRowWithAssociations: associations rowSelectAction: anInteractionStep
	| row |
	row := InspectionRowElement new.
	row replayer: self replayer.
	row parentStep: self parentStep.
	row rowSelectAction: anInteractionStep.
	associations do: [ :assoc |
		row put: assoc value atColumn: assoc key.
		].
	self rowsElement dataSource addRow: row.