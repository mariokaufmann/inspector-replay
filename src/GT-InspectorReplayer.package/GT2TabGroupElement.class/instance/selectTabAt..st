accessing
selectTabAt: aPosition
	labelsElement childrenDo: [ :aLabel | aLabel background: BlBackground transparent ].
	(labelsElement children at: aPosition) background: self backgroundColor.
	contentElement removeChildren.
	contentElement addChild: (tabElements at: aPosition)