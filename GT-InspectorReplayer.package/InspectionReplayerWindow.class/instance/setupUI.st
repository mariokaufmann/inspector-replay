initialization
setupUI
	| mainPane contentPane buttonsPane|
	BrMdTheme load.
	self extent: 420@420.
	
	mainPane := BrFlowPane new.
	mainPane layout: BlFlowLayout vertical.
	
	buttonsPane := BrFlowPane new.
	
	buttonsPane layoutDo: [ :l | l alignTopLeft ];
				constraintsDo: [ :c |
						c vertical fitContent.
						c horizontal matchParent ].

	buttonsPane addChild: (self createButtonWithText: 'Raw').
	buttonsPane addChild: (self createButtonWithText: 'Items').
	
	mainPane addChild: buttonsPane.
	
	self root addChild: buttonsPane.