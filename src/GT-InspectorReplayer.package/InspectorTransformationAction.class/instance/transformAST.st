executing
transformAST
 | ast |
	ast :=  self generateAST: self transformMethod.
	(InspectorTransformationActionVisitor onAction: self) visitMethodNode: ast.
	^ ast