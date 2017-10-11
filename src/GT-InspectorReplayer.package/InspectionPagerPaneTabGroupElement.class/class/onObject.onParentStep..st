instance creation
onObject: anObject onParentStep: anInteractionStep
	| instance |
	instance := self new.
	instance parentStep: anInteractionStep.
	instance constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	(anObject gt2InspectorPresentationsIn: instance) do: [ :presentation |
			instance addTab: presentation titled: presentation title ].
		
	^ instance
	
