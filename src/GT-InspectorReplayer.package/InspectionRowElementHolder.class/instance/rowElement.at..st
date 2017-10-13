as yet unclassified
rowElement: aRowElement at: aPosition
	
	| element |
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			" add new event handler here "
			aRowElement parentStep addChild: (InteractionStep withIndex: aPosition).
			InspectionPagerPane createFromObject: aRowElement rowObject addToDataSource: aRowElement panesDataSource.
			 ].
		itemElement addChild: element.
		 ]