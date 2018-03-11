*GT-InspectorReplayer
gt2InspectorChildNodesIn: composite
	<gt2InspectorPresentationOrder: 1> 
	^ composite buttonTable 
		title: 'Child nodes';
		display: [ self nodes select: [ :value | value isElement ]];
		column: 'Item' evaluated: [ :value :index | value asString ];
		rowSelectAction: [ :value :index | (XMLElementChildIndexSelectionAction withIndex: index) ].