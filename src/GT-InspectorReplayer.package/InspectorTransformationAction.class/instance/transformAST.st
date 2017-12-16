executing
transformAST
 | ast |
	ast := (self class methodDict at: #transform:) ast.
	(InspectorTransformationActionVisitor onAction: self) visitMethodNode: ast.
	^ ast