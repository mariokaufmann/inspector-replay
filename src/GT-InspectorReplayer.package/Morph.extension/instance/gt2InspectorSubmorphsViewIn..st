*GT-InspectorReplayer
gt2InspectorSubmorphsViewIn: composite
	<gt2InspectorPresentationOrder: 15> 
	^ composite table
		title: 'Submorphs';
		display: [ self submorphs ];
		"format: [ :aSubmorph | aSubmorph gtDisplayString ];"
		rowSelectAction: [ :aMorph :anIndex | 
			ChildCollectionIndexSelectionAction 
				withChildBlock: [ :morph | morph submorphs ] 
				index: anIndex ].