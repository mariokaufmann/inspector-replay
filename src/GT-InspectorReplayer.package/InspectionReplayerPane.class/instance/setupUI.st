initialization
setupUI
	| mainPane buttonsPane |
	self size: 300@420.
	
	mainPane := BrFlowPane new.
	mainPane layout: BlFlowLayout vertical;
				constraintsDo: [ :c |
						c vertical fitContent.
						c horizontal fitContent  ].
	
	buttonsPane := BrFlowPane new.
	buttonsPane layoutDo: [ :l | l alignCenter ];
				constraintsDo: [ :c |
						c vertical fitContent.
						c horizontal fitContent ].

	buttonsPane addChild: (self createButtonWithText: 'Raw').
	buttonsPane addChild: (self createButtonWithText: 'Items').
	
	mainPane addChild: buttonsPane.
	
	
	self addChild: mainPane.