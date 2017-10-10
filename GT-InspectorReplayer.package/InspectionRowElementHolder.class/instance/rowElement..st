as yet unclassified
rowElement: aRowElement
	
	| element |
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			InspectionPagerPane createFromObject: aRowElement rowObject addToDataSource: aRowElement panesDataSource.
			 ].
		itemElement addChild: element.
		 ]