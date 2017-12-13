*GT-InspectorReplayer
actionPath
	<return: #OrderedCollection>
	^ self hasParent
		ifTrue: [ self parent actionPath add: self recordingAction; yourself ]
		ifFalse: [ OrderedCollection new ]