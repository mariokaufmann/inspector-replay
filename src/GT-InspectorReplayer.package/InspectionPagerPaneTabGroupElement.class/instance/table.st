building
table
	^ InspectionTableElement new 
		parentStep: self parentStep;
		replayer: self replayer;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		margin: (BlInsets all: 20)