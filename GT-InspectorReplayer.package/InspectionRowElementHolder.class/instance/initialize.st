initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement layout: (BlGridLayout new columnCount: 1).
	itemElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ]