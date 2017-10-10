*GT-InspectorReplayer
gt2InspectorRawView
	<gt2InspectorPresentationOrder: 10>
	| presentation row |
	presentation := InspectionTableElement new 
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		title: 'Raw';
		margin: (BlInsets all: 20).
		
	self gtInspectorVariableValuePairs do: [ :assoc |
		row := InspectionRowElement new.
		row put: assoc key atColumn: 'Property'.
		row put: assoc value atColumn: 'Value'.
		row rowObject: assoc value.
		presentation rowsElement dataSource addRow: row ].
	
	^ presentation