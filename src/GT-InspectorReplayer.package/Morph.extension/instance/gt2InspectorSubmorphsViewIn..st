*GT-InspectorReplayer
gt2InspectorSubmorphsViewIn: aTabGroup
	<gt2InspectorPresentationOrder: 15>
	| table rowDict |
	table := aTabGroup table
		title: 'Submorphs' ..
				
	self submorphs doWithIndex: [ :submorph :index |
		rowDict := Dictionary new.
		rowDict at: 'Name' put: submorph printString.
		table 
			addRowWithAssociations: rowDict associations
			rowSelectAction: (ChildCollectionIndexSelectionStep 
				withChildBlock: [ :morph | morph submorphs ] index:  index)].
	
	^ table