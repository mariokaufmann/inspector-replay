initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement layout: BlLinearLayout vertical.
 	itemElement margin: (BlInsets top: 5 right: 0 bottom: 30 left: 60).
	itemElement effect: (BlDropShadowEffect color: (Color gray alpha: 0.5) width: 10 offset: 5@5).
	itemElement background: Color white.
	itemElement constraintsDo: [ :c | 
		c horizontal exact: 400.
		c vertical matchParent ]