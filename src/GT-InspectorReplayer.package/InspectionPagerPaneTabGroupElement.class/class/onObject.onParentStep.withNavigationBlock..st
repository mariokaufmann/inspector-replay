instance creation
onObject: anObject onParentStep: anInteractionStep withNavigationBlock: aNavigationBlock
	| instance |
	instance := self new.
	instance constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	(anObject gt2InspectorPresentationsIn: instance) do: [ :presentation |
			presentation navigationBlock: aNavigationBlock.
		 	presentation initializeContent.
			instance addTab: presentation titled: presentation title ].
		
	^ instance
	
