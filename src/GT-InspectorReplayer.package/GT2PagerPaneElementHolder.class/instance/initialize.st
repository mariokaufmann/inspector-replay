initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement layout: BlLinearLayout vertical.
 	itemElement margin: (BlInsets top: 30 right: 10 bottom: 30 left: 10).
 	itemElement padding: (BlInsets all: 10).
	itemElement effect: (BlDropShadowEffect color: (Color gray alpha: 0.5) width: 10 offset: 5@5).
	itemElement background: Color white.
	itemElement constraintsDo: [ :c | 
		c horizontal matchParent.
		c vertical matchParent ]