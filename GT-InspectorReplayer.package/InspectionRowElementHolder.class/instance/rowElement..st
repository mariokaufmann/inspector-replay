as yet unclassified
rowElement: aRowElement
	
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	itemElement background: Color pink.
	
	aRowElement columnValues keysAndValuesDo: [ :key : value |
		itemElement addChild: (self elementForText: (key printString)).
		itemElement addChild: (self elementForText: (value printString)).
		 ]