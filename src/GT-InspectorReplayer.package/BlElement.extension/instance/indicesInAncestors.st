*GT-InspectorReplayer
indicesInAncestors
	<return: #OrderedCollection>
	self parent isNil 
		ifTrue: [ ^ OrderedCollection new ]
		ifFalse: [ ^ self parent indicesInAncestors add: self childIndexInParent; yourself ]