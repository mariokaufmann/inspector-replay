accessing
rowElement: aRowElement atPosition: aPosition
	
	| element childStep |
	rowElement := aRowElement.
	
	itemElement removeChildren.
	itemElement layout: (BlGridLayout new columnCount: aRowElement numberOfColumns).
	
	aRowElement announcer when: RowSelectionStateAnnouncement send: #onSelectionStateSet to: self.
	
	aRowElement columnValues valuesDo: [ :value |
		element := self elementForText: (value printString).
		element addEventHandlerOn: BlClickEvent  do: [ :anEvent |
			self dataSource selectedPosition: aPosition.
			childStep := GT2InspectionStep new
				transformationAction: aRowElement rowSelectAction;
				parentVisualActionBlock: [ 
					self dataSource selectedPosition: aPosition.
					aRowElement tabElement tabGroup selectTabAt: (aRowElement tabElement tabPosition).
					 ].
			aRowElement parentStep addChildStep: childStep.
			aRowElement replayer notifySessionChanged.
			 ].
		itemElement addChild: element.
		 ]