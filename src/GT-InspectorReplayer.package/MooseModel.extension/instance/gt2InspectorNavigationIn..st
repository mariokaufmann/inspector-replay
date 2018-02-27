*GT-InspectorReplayer
gt2InspectorNavigationIn: composite
	<gt2InspectorPresentationOrder: 0>
	^ composite table 
		title: 'Navigation';
		display: [self navigationActions] ;
		column: 'Item' evaluated:  [:each | (each key arguments at: 1) asString ];
		rowSelectAction: [ :value :index | 
			MooseNavigationSelectionAction withNavigationName: (value key arguments at: 1) asString ].
	