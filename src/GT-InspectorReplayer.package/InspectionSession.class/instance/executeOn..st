executing
executeOn: anObject
	| intermediateResult |

	intermediateResult := anObject.
	self iterator steps do: [ :action | 
		intermediateResult := action executeOn: intermediateResult ].

	^ intermediateResult 