initialization
initialize
	super initialize.
	
	itemElement := BlElement new.
	itemElement layout: BlLinearLayout vertical.
	itemElement border: (BlBorder paint: (Color fromHexString: '0x99d6ff') width: 2).
	itemElement margin: (BlInsets right: 20).
	itemElement padding: (BlInsets all: 10).
	itemElement constraintsDo: [ :c | 
		c horizontal matchParent.
		c vertical matchParent ]