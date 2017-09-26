initialization
setupUI
	| buttonsPane button |
	BrMdTheme load.
	self extent: 420@420.
	
	buttonsPane := BrFlowPane new.
	
	buttonsPane layoutDo: [ :l | l alignCenter ];
				constraintsDo: [ :c |
						c vertical matchParent.
						c horizontal matchParent ].
	
	button := BrButton new
		text: (BrRopedText string: 'TestButton');
		margin: (BlInsets all: 5);
		size: 400@20.
	buttonsPane addChild: button;
	addChild: (BrButton new text: (BrRopedText string: 'TestButton 2')).
	
	self root addChild: buttonsPane.