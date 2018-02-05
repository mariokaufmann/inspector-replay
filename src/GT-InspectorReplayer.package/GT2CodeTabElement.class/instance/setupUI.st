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
	"buttonPane addChild: 
		(GT2InspectorButton new
			margin: (BlInsets right: 20);
			text: 'Do it' asRopedText;
			addEventHandlerOn: BlClickEvent do: [ :anEvent |
				navigationBlock value: self codeAction.
				uiActionRecorder recordClickOnElement: anEvent currentTarget 
				 ])."
	
	textEditorElement := BrEditorElement new
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		yourself.
	
	textEditor := (BrTextEditor new text: 'self ' asRopedText).
	textEditor styler: (BrRBTextStyler new classOrMetaClass: inspectionClass).
	
	textEditorElement editor: textEditor.
	
	self addShortcut: (BlShortcut new
				combination: (BlKeyCombination builder control; key: Key v; build);
				action: [ :aShortcut | textEditor text: Clipboard clipboardText asString asRopedText ]);
			addShortcut: (BlShortcut new
				combination: (BlKeyCombination builder control; key: Key g; build);
				action: [ :aShortcut | navigationBlock value: self codeAction ]).
		
	self addChild: buttonPane.
	self addChild: textEditorElement.