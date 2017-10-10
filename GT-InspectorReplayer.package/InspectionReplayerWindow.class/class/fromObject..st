instance creation
fromObject: anObject
	| window |
	window := self new.
	InspectionPagerPane fromObject: anObject toDataSource: window pager panesElement dataSource.
	window show
	