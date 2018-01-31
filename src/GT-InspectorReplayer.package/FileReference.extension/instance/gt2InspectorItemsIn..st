*GT-InspectorReplayer
gt2InspectorItemsIn: composite
	<gt2InspectorPresentationOrder: 0> 
	^ composite buttonTable 
		title: 'Items';
		display: [self isDirectory 
			ifTrue: [self files]
			ifFalse: [ OrderedCollection new ]] ;
		column: 'Name' evaluated:  [:each | (self isChildOf: each) 
										ifTrue: [ '..' ] 
										ifFalse: [ each basename ]];
		column: 'Size' evaluated:  [:each | each humanReadableSize];
		rowSelectAction: [ :value :index | FileSelectionAction withFileName: value basename ].
	