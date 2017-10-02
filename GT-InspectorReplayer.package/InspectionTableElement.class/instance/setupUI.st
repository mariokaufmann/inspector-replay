initialization
setupUI
	
	self layout: BlLinearLayout vertical.
	
	rowsElement := InspectionRowsElement new.
	rowsElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	self addChild: rowsElement.