*GT-InspectorReplayer
gt2InspectorRawViewIn: aTabGroup
	<gt2InspectorPresentationOrder: 10>
	| table rowDict |
	table := aTabGroup table
		title: 'Raw'.
	self gtInspectorVariableValuePairs do: [ :assoc |
		rowDict := Dictionary new.
		rowDict at: 'Property' put: assoc key.
		rowDict at: 'Value' put: assoc value.
		table 
			addRowWithAssociations: rowDict associations
			rowSelectAction: (VariableSelectionStep withName: assoc key).].
	
	^ table