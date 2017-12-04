accessing
rowElement: aRowElement atPosition: aPosition
	
	
	rowElement := aRowElement.
	
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	itemElement recordingAction: aRowElement rowSelectAction.
	
	aRowElement announcer when: RowSelectionStateAnnouncement send: #onSelectionStateSet to: self.
	
	aRowElement columnValues valuesDo: [ :value |
		| element |
		element := self elementForText: (value asString).
		element constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ].
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			self dataSource selectedPosition: aPosition.
			self dataSource navigationBlock value: aRowElement rowSelectAction.
			self dataSource uiActionRecorder recordClickOnElement: element ].
		itemElement addChild: element  ]