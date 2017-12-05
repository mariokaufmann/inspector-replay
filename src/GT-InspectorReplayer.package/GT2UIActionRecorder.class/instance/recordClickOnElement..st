as yet unclassified
recordClickOnElement: anElement
	uiActions add: (ClickUIAction onPath: (anElement actionPath)).
	self halt.