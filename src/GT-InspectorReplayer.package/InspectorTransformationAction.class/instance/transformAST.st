executing
transformAST
 | ast |
	ast :=  self generateAST: (self class methodDict at: #transform:).
	(InspectorTransformationActionVisitor onAction: self) visitMethodNode: ast.
	^ ast