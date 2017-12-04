adding
detectRowPosition: aBlock
	self rows doWithIndex: [ :row :index |
		(aBlock value: row) ifTrue: [ ^index ]].
	self error: 'Could not find row.'.