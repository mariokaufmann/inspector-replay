initialization
createButtonsPane
	| buttonsPane button1 button2 button3 |
	buttonsPane := BlElement new.
	buttonsPane margin: (BlInsets all: 20);
		layout: BlLinearLayout horizontal;
		constraintsDo: [ :c |
			c vertical fitContent.
			c horizontal matchParent ].
	
	button1 := BlTextElement new
		padding: (BlInsets all: 10);
		margin: (BlInsets right: 20);
		background: Color veryLightGray;
		text: (BrRopedText string: 'Inspect session in GTInspector');
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			self inspectionSession inspect ].
		
	buttonsPane addChild: button1.
		
	button2 := BlTextElement new
		padding: (BlInsets all: 10);
		margin: (BlInsets right: 20);
		background: Color veryLightGray;
		text: (BrRopedText string: 'Inspect session in GT2Inspector');
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			GT2InspectorWindow openOnModel: (GT2Inspector on: self inspectionSession) ].
	buttonsPane addChild: button2.
	
	button3 := BlTextElement new
		padding: (BlInsets all: 10);
		margin: (BlInsets right: 20);
		background: Color veryLightGray;
		text: (BrRopedText string: 'Replay session in new GT2Inspector');
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			self inspectionSession uiActionRecorder 
				replaySession: self inspectionSession 
				withDelay: (1 seconds asDelay). ].
	buttonsPane addChild: button3.
		
	^ buttonsPane