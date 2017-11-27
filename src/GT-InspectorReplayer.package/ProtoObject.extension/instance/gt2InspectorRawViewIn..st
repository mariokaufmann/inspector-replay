*GT-InspectorReplayer
gt2InspectorRawViewIn: composite
	<gt2InspectorPresentationOrder: 10>
	^  composite table
		title: 'Raw';
		display: [ self gtInspectorVariableValuePairs ];
		column: 'Property' evaluated: [ :assoc | assoc key ];
		column: 'Value' evaluated: [ :assoc | assoc value ];
		rowSelectAction: [ :assoc | (VariableSelectionAction withName: assoc key) ].