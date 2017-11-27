initialization
setupUI
	| mainPane |
	self extent: 1000@600.
	self title: 'Inspector Replayer'.
	
	mainPane := BlElement new.
	
	mainPane margin: (BlInsets all: 10).
	mainPane layout: BlLinearLayout vertical;
				constraintsDo: [ :c |
						c vertical matchParent.
						c horizontal matchParent  ].
					
	mainPane addChild: self createButtonsPane.

	pager := GT2Pager new.
	pager constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	mainPane addChild: pager.		

	self root addChild: mainPane.
	self root addEventHandler:
				(BlEventHandler
					on: BlDblClickEvent
					do: [ :evt | evt modifiers isShift ifTrue: [ BlElementSelection on: evt target ] ]).