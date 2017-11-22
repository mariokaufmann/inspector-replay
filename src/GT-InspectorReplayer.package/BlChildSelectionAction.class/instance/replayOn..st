executing
replayOn: aBlElement
	^ ClickUIAction new executeOn: (aBlElement children at: index)