*GT-InspectorReplayer
gt2InspectorSubmorphsViewIn: composite
	<gt2InspectorPresentationOrder: 15>
	| table rowDict |
	table := composite table
		title: 'Submorphs'.
				
	self submorphs doWithIndex: [ :submorph :index |
		rowDict := Dictionary new.
		rowDict at: 'Name' put: submorph printString.
		table 
			addRowWithAssociations: rowDict associations
			rowSelectAction: (ChildCollectionIndexSelectionStep 
				withChildBlock: [ :morph | morph submorphs ] index:  index)].
	
	^ table