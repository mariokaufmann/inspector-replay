instance creation
createFromObject: anObject addToDataSource: anInspectionPagerPaneDataSource
	| tabs pane |
	tabs := InspectionPagerPaneTabGroupElement fromInteractionStep: InteractionStep new.
	
	pane := self new title: anObject asString; elementBlock: [tabs].
	anInspectionPagerPaneDataSource addPane: pane.
	