accessing
visitMessageNode: aMessageNode
	(aMessageNode receiver respondsTo: #messages)
		ifTrue: [ aMessageNode receiver messages do: [ :each | self visitMessageNode: each ]].
	aMessageNode arguments doWithIndex: [ :arg :index |
		arg class = RBInstanceVariableNode
			ifTrue: [ 
				aMessageNode arguments at: index put: 
					(RBLiteralNode value: (action instVarNamed: arg name)) ] ]