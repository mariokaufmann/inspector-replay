actions
initializeContent
	self displayBlock value withIndexDo: [ :anObject :anIndex |
		|rowDict|
		rowDict := OrderedDictionary new.
		self columnsAssociations 
			ifEmpty: [ 
				rowDict at: 'Name' put: anObject printString ] 
			ifNotEmpty: 	[self columnsAssociations keysAndValuesDo: [ :columnName :columnBlock |
				rowDict at: columnName put: (columnBlock cull: anObject cull: anIndex) ]].
		self 
			addRowWithAssociations: rowDict associations
			rowSelectAction: (self rowSelectActionBlock cull: anObject cull: anIndex) ].