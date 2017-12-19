callbacks
tryReproducingForStep: anInspectionStep withParent: aParentInspectionStep
	| sourceStep sourceStepIndex |
	sourceStepIndex := (aParentInspectionStep childStepIndexOf: anInspectionStep) - 1.
	sourceStepIndex < 1 ifTrue: [ ^ self ].
	sourceStep := aParentInspectionStep childStepAt: sourceStepIndex.
	anInspectionStep childSteps: sourceStep childSteps.
