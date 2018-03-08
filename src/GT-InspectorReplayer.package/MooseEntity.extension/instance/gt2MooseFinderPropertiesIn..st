*GT-InspectorReplayer
gt2MooseFinderPropertiesIn: composite
	<gt2InspectorPresentationOrder: 2>
	^ composite table
		title: 'Properties';
		display: [ self mooseInterestingEntity mooseDescription allPrimitiveAttributes ];
		column: 'Properties' evaluated: [:each | each name ];
		column: 'Value' evaluated: 
			[:value :index | [(self mooseInterestingEntity mmGetProperty: value) asString] 
				on: Error do: ['error'] ];
		rowSelectAction: [ :value :index | (MoosePropertySelectionAction withProperty: value) ];
		yourself.