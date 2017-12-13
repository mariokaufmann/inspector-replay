accessing
selectTabAt: aPosition
	labelsElement childrenDo: [ :aLabel | aLabel beDeselected ].
	(labelsElement children at: aPosition) beSelected.
	contentElement removeChildren.
	contentElement addChild: (tabElements at: aPosition)