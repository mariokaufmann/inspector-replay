instance creation
createFromObject: anObject addToDataSource: anInspectionPagerPaneDataSource
	| tabs pane |
	tabs := InspectionPagerPaneTabGroupElement new.
	tabs constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
		
	anObject gt2InspectorPresentations do: [ :presentation |
		presentation rowsElement dataSource rows do: [ :rowElement |
			rowElement panesDataSource: anInspectionPagerPaneDataSource  ].
		tabs addTab: presentation titled: presentation title ].
	
	pane := self new title: anObject asString; elementBlock: [tabs].
	anInspectionPagerPaneDataSource addPane: pane.
	