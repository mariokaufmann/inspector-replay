*GT-InspectorReplayer
gt2InspectorItemsIn: composite
	<gt2InspectorPresentationOrder: 0> 
	^ composite buttonTable 
		title: 'Nodes';
		display: [ self select: [ :value | value isElement ]];
		column: 'Item' evaluated: [ :value :index | value asString ];
		rowSelectAction: [ :value :index | (XMLElementIndexSelectionAction withIndex: index) ].