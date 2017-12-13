initialization
initialize
	super initialize.
	self padding: (BlInsets all: 10).
	
	underline := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical exact: 2 ];
		background: (Color r: 63 g: 81 b: 181 range: 255).
	self beDeselected.

	self addChild: underline