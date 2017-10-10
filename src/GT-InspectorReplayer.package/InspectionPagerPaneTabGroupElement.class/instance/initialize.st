adding
initialize
	super initialize.
	
	self width: 100.
	self layout: BlLinearLayout vertical.
	
	labelsElement := BlElement new
		layout: BlFlowLayout new;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ].
		
	contentElement := BlElement new
		layout: BlLinearLayout new;
		background: Color veryVeryLightGray;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].
		
	self addChildren: { labelsElement . contentElement }