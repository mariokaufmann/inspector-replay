initialization
setupUI
	| mainPane |
	BrMdTheme load.
	self extent: 900@420.
	self title: 'Inspector Replayer'.
	
	mainPane := BrFlowPane new.
	mainPane margin: (BlInsets all: 10).
	mainPane layout: BlFlowLayout horizontal;
				constraintsDo: [ :c |
						c vertical matchParent.
						c horizontal matchParent  ].
					
	mainPane addChild: InspectionReplayerPane new.
	mainPane addChild: InspectionReplayerPane new.
	
	self root addChild: mainPane.