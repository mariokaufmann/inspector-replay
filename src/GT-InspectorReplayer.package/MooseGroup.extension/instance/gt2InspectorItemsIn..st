*GT-InspectorReplayer
gt2InspectorItemsIn: composite
	<gt2InspectorPresentationOrder: 0> 
	^ composite buttonTable 
		title: 'Items';
		display: [self asArray] ;
		column: 'Item' evaluated:  [:each | each mooseName ];
		rowSelectAction: [ :value :index | 
			MooseGroupItemSelectionAction withGroupItemName: value mooseName ].
	