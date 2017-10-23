as yet unclassified
selectedPosition: aPosition
	rows doWithIndex: [ :row :index |
		index = aPosition
			ifTrue: [ row selected: true ]
			ifFalse: [ row selected: false ]
			]