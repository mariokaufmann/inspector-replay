initialization
setupUI
	
	| buttonPane |
	self layout: BlLinearLayout vertical.
	
	rowsElement := InspectionRowsElement new.
	rowsElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	rowsElement padding: (BlInsets top: 5 right: 0 bottom: 5 left: 0).
	
	self addChild: rowsElement.
	
	buttonPane := BlElement new.
	buttonPane layout: BlLinearLayout new.
	buttonPane constraintsDo: [ :c | 
		c horizontal matchParent.
		c vertical fitContent ].
	buttonPane addChild: (GT2InspectorButton new
			margin: (BlInsets right: 20);
			text: 'Apply to all' asRopedText;
			constraintsDo: [ :c |
				c linear horizontal alignRight
				 ];
			addEventHandlerOn: BlClickEvent do: [ :anEvent |
				"navigationBlock value: self codeAction.
				uiActionRecorder recordClickOnElement: anEvent currentTarget "
				 ];
			yourself).
	self addChild: buttonPane.