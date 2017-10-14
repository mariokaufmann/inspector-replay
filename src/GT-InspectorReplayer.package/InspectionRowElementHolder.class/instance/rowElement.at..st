as yet unclassified
rowElement: aRowElement at: aPosition
	
	| element |
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			aRowElement parentStep addChildStep: (InteractionStep withIndex: aPosition).
			aRowElement replayer notifySessionChanged.
			 ].
		itemElement addChild: element.
		 ]