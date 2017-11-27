adding
addTab: aTabElement titled: aString
	| tabLabel |
	
	tabElements add: aTabElement.
	aTabElement tabPosition: tabElements size.
	tabLabel := GT2TabLabelElement withTabName: aString.
	tabLabel text: (BrRopedText string: aString).
	labelsElement addChild: tabLabel.
	tabLabel
		addEventHandlerOn: BlClickEvent
		do: [ :anEvent |
			self selectTabAt: (labelsElement children indexOf: anEvent currentTarget) ].
	
	contentElement hasChildren
		ifFalse: [
			contentElement addChild: aTabElement.
			tabLabel background: Color veryVeryLightGray lighter. ]