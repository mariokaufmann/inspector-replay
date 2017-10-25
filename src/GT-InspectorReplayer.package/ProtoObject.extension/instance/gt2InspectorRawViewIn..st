*GT-InspectorReplayer
gt2InspectorRawViewIn: composite
	<gt2InspectorPresentationOrder: 10>
	^  composite table
		title: 'Raw';
		display: [ self gtInspectorVariableValuePairs ];
		column: 'Property' evaluated: [ :assoc | assoc key asString ];
		column: 'Value' evaluated: [ :assoc | assoc value ];
		rowSelectAction: [ :assoc | (VariableSelectionAction withName: assoc key) ].
		
	"self gtInspectorVariableValueTairs do: [ :assoc |
		rowDict := Dictionary new.
		rowDict at: 'Property' put: assoc key asString.
		rowDict at: 'Value' put: assoc value.
		table 
			addRowWithAssociations: rowDict associations
			rowSelectAction: (VariableSelectionAction withName: assoc key).]."