initialization
createButtonsPane
	| buttonsPane button1 button2 button3 |
	buttonsPane := BlElement new.
	buttonsPane
		clipChildren: false;
		margin: (BlInsets all: 20);
		layout: BlLinearLayout horizontal;
		constraintsDo: [ :c |
			c vertical fitContent.
			c horizontal matchParent ].
	
	button1 := GT2InspectorButton new
		margin: (BlInsets right: 20);
		text: 'Inspect in GTInspector' asRopedText;
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			self inspectionSession inspect ].
	buttonsPane addChild: button1.
		
	button2 := GT2InspectorButton new
		margin: (BlInsets right: 20);
		text: 'Generate code' asRopedText;
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			GTPlayground openContents: (GT2InspectionCodeGenerator onSession: self inspectionSession) generateCodeForSession. ].
	buttonsPane addChild: button2.
	
	button3 := GT2InspectorButton new
		margin: (BlInsets right: 20);
		text: 'Replay in GT2Inspector' asRopedText;
		addEventHandlerOn: BlClickEvent do: [ :anEvent |
			self inspectionSession uiActionRecorder 
				replaySession: self inspectionSession 
				withDelay: (1 seconds asDelay). ].
	buttonsPane addChild: button3.
		
	^ buttonsPane