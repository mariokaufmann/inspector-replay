as yet unclassified
rowElement: aRowElement
	
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	itemElement background: Color pink.
	