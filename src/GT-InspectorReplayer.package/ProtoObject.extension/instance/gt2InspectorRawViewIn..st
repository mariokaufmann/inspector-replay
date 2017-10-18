*GT-InspectorReplayer
gt2InspectorRawViewIn: composite
	<gt2InspectorPresentationOrder: 10>
	| table rowDict |
	table := composite table
		title: 'Raw'.
	self gtInspectorVariableValuePairs do: [ :assoc |
		rowDict := Dictionary new.
		rowDict at: 'Property' put: assoc key asString.
		rowDict at: 'Value' put: assoc value.
		table 
			addRowWithAssociations: rowDict associations
			rowSelectAction: (VariableSelectionAction withName: assoc key).].
	
	^ table