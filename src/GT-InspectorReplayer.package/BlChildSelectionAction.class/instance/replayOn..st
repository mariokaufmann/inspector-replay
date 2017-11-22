executing
replayOn: aBlElement
	^ (ClickUIAction onPath: path) replayOn: (aBlElement children at: index)