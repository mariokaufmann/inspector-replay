initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement layout: (BlGridLayout horizontal columnCount: 1; cellSpacing: 10.0).
	itemElement padding: (BlInsets top: 6 right: 20 bottom: 6 left: 20).
	itemElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ]