adding
onBindHolder: anElementHolder at: aPosition
	| pane |
	pane := panes at: aPosition.
	anElementHolder pane: pane atPosition: aPosition