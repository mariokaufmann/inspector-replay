adding
addTab: anElement titled: aString
	| tabLabel |
	
	tabElements add: anElement.
	tabLabel := self newTabLabel.
	tabLabel text: (BrRopedText string: aString).
	labelsElement addChild: tabLabel.
	tabLabel
		addEventHandlerOn: BlClickEvent
		do: [ :anEvent |
				self selectTabAt: (labelsElement children indexOf: anEvent currentTarget)
			].
	
	contentElement hasChildren
		ifFalse: [
			contentElement addChild: anElement.
			tabLabel background: Color veryVeryLightGray. ]