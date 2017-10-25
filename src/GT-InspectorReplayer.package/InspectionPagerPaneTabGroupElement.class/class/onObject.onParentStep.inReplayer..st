instance creation
onObject: anObject onParentStep: anInteractionStep inReplayer: anInspectionReplayer
	| instance |
	instance := self new.
	instance parentStep: anInteractionStep.
	instance replayer: anInspectionReplayer.
	instance constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	(anObject gt2InspectorPresentationsIn: instance) do: [ :presentation |
		 	presentation initializeContent.
			instance addTab: presentation titled: presentation title ].
		
	^ instance
	
