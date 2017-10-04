initialization
setupUI
	| mainPane |
	self extent: 1000@600.
	self title: 'Inspector Replayer'.
	
	mainPane := BlElement new.

	mainPane margin: (BlInsets all: 10).
	mainPane layout: BlFlowLayout horizontal;
				constraintsDo: [ :c |
						c vertical matchParent.
						c horizontal matchParent  ].
	
	pager := InspectionPager new.
	pager constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	mainPane addChild: pager.		

	self root addChild: mainPane.