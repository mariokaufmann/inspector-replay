initialization
setupUI
	
	| textEditorElement buttonPane |
	self layout: BlLinearLayout vertical.
	self padding: (BlInsets all: 10).
	
	buttonPane := BlElement new.
	buttonPane constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent  ].
	buttonPane layout: BlFlowLayout horizontal.
	buttonPane margin: (BlInsets bottom: 20).
	buttonPane addChild: 
		(GT2InspectorButton new
			margin: (BlInsets right: 20);
			text: 'Do it' asRopedText;
			addEventHandlerOn: BlClickEvent do: [ :anEvent |
				navigationBlock value: self codeAction.
				uiActionRecorder recordClickOnElement: anEvent currentTarget 
				 ]).
	
	textEditorElement := BrEditorElement new
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		yourself.
	
	textEditor := (BrTextEditor new text: 'self ' asRopedText).
	textEditor styler: (BrRBTextStyler new classOrMetaClass: inspectionClass).
	
	textEditorElement editor: textEditor.
	
	self addChild: buttonPane.
	self addChild: textEditorElement.