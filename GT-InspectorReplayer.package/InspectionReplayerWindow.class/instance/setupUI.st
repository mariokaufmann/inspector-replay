initialization
setupUI
	| mainPane |
	self extent: 900@420.
	self title: 'Inspector Replayer'.
	
	mainPane := BlElement new.

	mainPane margin: (BlInsets all: 10).
	mainPane layout: BlFlowLayout horizontal;
				constraintsDo: [ :c |
						c vertical matchParent.
						c horizontal matchParent  ].
					
	mainPane addChild: InspectionPager new.		

	self root addChild: mainPane.