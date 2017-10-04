as yet unclassified
rowElement: aRowElement
	
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement columnValues valuesDo: [ :value |
		itemElement addChild: (self elementForText: (value printString)).
		 ]