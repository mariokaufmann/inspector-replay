*GT-InspectorReplayer
gt2InspectorSubmorphsViewIn: aTabGroup
	<gt2InspectorPresentationOrder: 15>
	| table rowDict |
	table := aTabGroup table
		title: 'Submorphs' ..
				
	self submorphsDo: [ :submorph |
		rowDict := Dictionary new.
		rowDict at: 'Name' put: submorph printString.
		table addRowWithAssociations: rowDict associations].
	
	^ table