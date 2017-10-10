instance creation
fromObject: anObject
	| window |
	window := self new.
	InspectionPagerPane createFromObject: anObject addToDataSource: window pager panesElement dataSource.
	window show
	