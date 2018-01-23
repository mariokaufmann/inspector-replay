initialization
setupUI
	
	| textEditorElement |
	self layout: BlFlowLayout new.
	
	textEditorElement := BrEditorElement new
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		yourself.
		
	textEditorElement editor: (BrTextEditor new text: (BrRopedText string: (String loremIpsum: 2000000)); yourself).
	
	self addChild: textEditorElement.