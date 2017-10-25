*GT-InspectorReplayer
gt2InspectorItemsIn: composite
	<gt2InspectorPresentationOrder: 0> 
	^ composite table 
		title: 'Items';
		display: [ self ];
		column: 'Index' evaluated: [ :value :index | index asString ];
		column: 'Item' evaluated: [ :value | value printString ];
		rowSelectAction: [ :value :index | (IndexSelectionAction withIndex: index) ].
	