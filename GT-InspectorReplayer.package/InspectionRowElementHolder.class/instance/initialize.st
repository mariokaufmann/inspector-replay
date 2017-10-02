initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement background: Color pink.
	itemElement layout: (BlGridLayout new columnCount: 1).
	itemElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ]