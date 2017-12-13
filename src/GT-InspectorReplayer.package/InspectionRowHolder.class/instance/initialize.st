initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement layout: (BlGridLayout horizontal columnCount: 1; cellSpacing: 10.0).
	itemElement padding: (BlInsets top: 2 right: 20 bottom: 2 left: 20).
	itemElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ]