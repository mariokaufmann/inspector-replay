as yet unclassified
rowElement: aRowElement
	
	| element |
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			InspectionPagerPane fromObject: aRowElement rowObject toDataSource: aRowElement panesDataSource.
			 ].
		itemElement addChild: element.
		 ]