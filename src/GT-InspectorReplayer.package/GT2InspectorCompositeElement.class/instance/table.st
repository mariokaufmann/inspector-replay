building
table
	^ InspectionTableElement new 
		tabGroup: self;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ]