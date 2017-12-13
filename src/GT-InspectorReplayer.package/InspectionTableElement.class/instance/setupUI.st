initialization
setupUI
	
	self layout: BlLinearLayout vertical.
	
	rowsElement := InspectionRowsElement new.
	rowsElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	rowsElement padding: (BlInsets top: 5 right: 0 bottom: 5 left: 0).
	
	self addChild: rowsElement.