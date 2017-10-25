accessing
selectTabAt: aPosition
	labelsElement childrenDo: [ :aLabel | aLabel background: BlBackground transparent ].
	(labelsElement children at: aPosition) background: Color veryVeryLightGray.
	contentElement removeChildren.
	contentElement addChild: (tabElements at: aPosition)