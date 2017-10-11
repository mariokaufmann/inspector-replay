as yet unclassified
rowElement: aRowElement
	
	| element |
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			" add new event handler here "
			aRowElement parentStep addChild: (InteractionStep withIndex: 2 "get own index").
			InspectionPagerPane createFromObject: aRowElement rowObject addToDataSource: aRowElement panesDataSource.
			 ].
		itemElement addChild: element.
		 ]