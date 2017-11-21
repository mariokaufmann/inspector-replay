accessing
selectTabAt: aPosition
	labelsElement childrenDo: [ :aLabel | aLabel background: BlBackground transparent ].
	(labelsElement children at: aPosition) background: Color veryVeryLightGray lighter.
	contentElement removeChildren.
	contentElement addChild: (tabElements at: aPosition)