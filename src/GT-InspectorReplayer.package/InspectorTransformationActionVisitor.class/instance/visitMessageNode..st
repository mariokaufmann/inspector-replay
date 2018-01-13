accessing
visitMessageNode: aMessageNode
	aMessageNode arguments doWithIndex: [ :arg :index |
		arg class = RBInstanceVariableNode
			ifTrue: [ 
				aMessageNode arguments at: index put: 
					(RBLiteralNode value: (action instVarNamed: arg name)) ] ]