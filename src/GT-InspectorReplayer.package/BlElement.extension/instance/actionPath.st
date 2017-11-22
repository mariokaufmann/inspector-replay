*GT-InspectorReplayer
actionPath
	<return: #OrderedCollection>
	self parent isNil 
		ifTrue: [ ^ OrderedCollection new ]
		ifFalse: [ ^ self parent actionPath add: self buildChildSelectionAction; yourself ]