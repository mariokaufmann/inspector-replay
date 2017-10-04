instance creation
fromObject: anObject
	| tabs tab1 row |
	tabs := InspectionPagerPaneTabGroupElement new.
	tabs constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	tab1 := InspectionTableElement new 
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];
		margin: (BlInsets all: 20).
		
	anObject class instanceVariables do: [ :instVar |
		row := InspectionRowElement new.
		row put: instVar atColumn: 'Property'.
		row put: (anObject instVarNamed: instVar) atColumn: 'Value'.
		tab1 addRow: row.
		 ].
	
	tabs addTab: tab1 titled: 'Raw'.
	
	^ self new title: anObject asString; elementBlock: [tabs]