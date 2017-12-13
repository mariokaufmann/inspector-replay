initialization
pane: aPagerPane atPosition: aPosition
	| titleElement paneElement titleText |

	itemElement removeChildren.
	itemElement recordingAction: (GT2PaneSelectionAction withPaneIndex: aPosition).
	
	titleText := aPagerPane title asRopedText.
	titleText attributes: {
		BrFontWeightAttribute bold
	}.
	
	titleElement := BlShrinkingTextElement new.
	titleElement constraintsDo: [ :c |
		c horizontal matchParent ].
	titleElement text: titleText.
	titleElement padding: (BlInsets top: 10 bottom: 10).
	titleElement margin: (BlInsets left: 15 right: 20).

	itemElement addChild: titleElement.
	paneElement := aPagerPane paneElement.
	paneElement hasParent ifTrue: [ paneElement parent removeChild: paneElement ].
	itemElement addChild: aPagerPane paneElement