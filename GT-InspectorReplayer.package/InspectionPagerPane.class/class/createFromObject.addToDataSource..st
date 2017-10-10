instance creation
createFromObject: anObject addToDataSource: anInspectionPagerPaneDataSource
	| tabs tab1 row pane |
	tabs := InspectionPagerPaneTabGroupElement new.
	tabs constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	tab1 := InspectionTableElement new 
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		margin: (BlInsets all: 20).
		
	anObject gtInspectorVariableValuePairs do: [ :assoc |
		row := InspectionRowElement new.
		row put: assoc key atColumn: 'Property'.
		row put: assoc value atColumn: 'Value'.
		row rowObject: assoc value.
		row panesDataSource: anInspectionPagerPaneDataSource.
		tab1 rowsElement dataSource addRow: row.
		 ].
	
	tabs addTab: tab1 titled: 'Raw'.
	
	pane := self new title: anObject asString; elementBlock: [tabs].
	anInspectionPagerPaneDataSource addPane: pane.
	