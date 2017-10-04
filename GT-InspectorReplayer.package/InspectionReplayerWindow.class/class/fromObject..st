instance creation
fromObject: anObject
	| window |
	window := self new.
	window	 pager panesElement dataSource addPane: (InspectionPagerPane fromObject: anObject).
	window show
	