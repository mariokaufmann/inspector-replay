accessing
rowItem: aRowItem atPosition: aPosition in: aDataSource

	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowItem numberOfColumns).
	itemElement recordingAction: aRowItem rowSelectAction.
	itemElement background: (aRowItem isSelected
		ifTrue: [ Color gray alpha: 0.2 ]
		ifFalse: [ Color transparent ]).

	itemElement addEventHandlerOn: BlMouseDownEvent do: [ :anEvent |
		aRowItem beSelected.
		aDataSource navigationBlock value: aRowItem rowSelectAction.
		aDataSource uiActionRecorder recordClickOnElement: anEvent currentTarget ].

	aRowItem columnValues valuesDo: [ :value |
		| element text |
		text := (value asString).
		value asString isEmpty ifTrue: [ text := ' ' ].
		element := self elementForText: text.
		element constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ].
		itemElement addChild: element ]