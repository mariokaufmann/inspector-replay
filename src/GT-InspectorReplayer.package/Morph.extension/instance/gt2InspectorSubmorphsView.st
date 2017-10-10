*GT-InspectorReplayer
gt2InspectorSubmorphsView
	<gt2InspectorPresentationOrder: 15>
	| presentation row |
	presentation := InspectionTableElement new 
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		title: 'Submorphs';
		margin: (BlInsets all: 20).
		
	self submorphsDo: [ :submorph |
		row := InspectionRowElement new.
		row put: submorph printString atColumn: 'Name'.
		row rowObject: submorph.
		presentation rowsElement dataSource addRow: row ].
	
	^ presentation