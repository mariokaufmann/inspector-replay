instance creation
fromInteractionStep: anInteractionStep
	| instance |
	instance := self new.
	instance constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	anInteractionStep inspectionObject 
		gt2InspectorPresentations do: [ :presentation |
			instance addTab: presentation titled: presentation title ].
		
	^ instance
	
