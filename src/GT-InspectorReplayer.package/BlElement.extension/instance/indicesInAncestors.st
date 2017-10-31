*GT-InspectorReplayer
indicesInAncestors
	<return: #OrderedCollection>
	self parent isNil ifTrue: [ ^ OrderedCollection new ].
	
	self parent class == GT2PagerPaneElementHolder
		ifTrue: [ ^ OrderedCollection new add: self childIndexInParent; yourself ]
		ifFalse: [ ^ self parent indicesInAncestors add: self childIndexInParent; yourself ]