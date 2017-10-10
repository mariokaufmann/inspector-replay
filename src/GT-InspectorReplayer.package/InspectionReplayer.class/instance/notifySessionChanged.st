as yet unclassified
notifySessionChanged
	| panesDataSource |
	panesDataSource := window panesDataSource.
	panesDataSource clearPanes.
	
	panesDataSource addPane: (InspectionPagerPane createFromObject: session inspectionObject)