accessing
rowElement: aRowElement atPosition: aPosition
	
	| element |
	rowElement := aRowElement.
	
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement announcer when: RowSelectionStateAnnouncement send: #onSelectionStateSet to: self.
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			self dataSource selectedPosition: aPosition.
			self dataSource navigationBlock value: aRowElement rowSelectAction ].
		itemElement addChild: element  ]