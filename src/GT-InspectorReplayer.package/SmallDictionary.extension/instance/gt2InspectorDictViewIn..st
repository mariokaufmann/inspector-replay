*GT-InspectorReplayer
gt2InspectorDictViewIn: composite
	<gt2InspectorPresentationOrder: 0> 
	^ composite table 
		title: 'Items';
		display: [ self  associations ];
		column: 'Key' evaluated: [ :value :index | value key ];
		column: 'AValue' evaluated: [ :value | value value ];
		rowSelectAction: [ :value :index | (KeyAction withKey: value key) ].