executing
generateAST: aCompiledMethod
	 ^ aCompiledMethod parseTree doSemanticAnalysisIn: aCompiledMethod methodClass