*GT-InspectorReplayer
gt2InspectorItemsIn: composite
	<gt2InspectorPresentationOrder: 0> 
	| table rowDict |
	table := composite table 
		title: 'Items'.
	self doWithIndex: [ :item :index |
		rowDict := Dictionary new.
		rowDict at: 'Index' put: index.
		rowDict at: 'Item' put: item.
		table
			addRowWithAssociations: rowDict associations
			rowSelectAction: (IndexSelectionStep withIndex: index) ].
	^ table
	