accessing
selectTabAt: aPosition
	labelsElement childrenDo: [ :aLabel | aLabel background: BlBackground transparent ].
	(labelsElement childAt: aPosition) background: Color veryVeryLightGray.
	contentElement removeChildren.
	contentElement addChild: (tabElements at: aPosition)