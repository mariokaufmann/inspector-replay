instance creation
fromInspectionObject: anObject
	| instance |
	instance := self new.
	instance constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	(anObject gt2InspectorPresentationsIn: instance) do: [ :presentation |
			instance addTab: presentation titled: presentation title ].
		
	^ instance
	
