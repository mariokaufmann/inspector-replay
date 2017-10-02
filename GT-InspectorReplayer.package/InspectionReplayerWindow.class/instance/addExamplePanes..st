adding
addExamplePanes: aPagerPane
	aPagerPane panesElement dataSource
		addPane: (InspectionPagerPane new title: 'Pane 1');
		addPane: (InspectionPagerPane new title: 'Pane 2');
		addPane: (InspectionPagerPane new title: 'Pane 3');
		addPane: (InspectionPagerPane new title: 'Pane 4').